//
//  DPHostBatteryProfile.m
//  dConnectDeviceHost
//
//  Copyright (c) 2014 NTT DOCOMO, INC.
//  Released under the MIT license
//  http://opensource.org/licenses/mit-license.php
//

#import "DPHostDevicePlugin.h"
#import "DPHostBatteryProfile.h"
#import "DPHostServiceDiscoveryProfile.h"
#import "DPHostUtils.h"

@interface DPHostBatteryProfile ()

/// @brief イベントマネージャ
@property DConnectEventManager *eventMgr;

- (void) sendOnChargingChangeEvent:(NSNotification *)notification;
- (void) sendOnBatteryChangeEvent:(NSNotification *)notification;

@end

@implementation DPHostBatteryProfile

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.delegate = self;
        
        // イベントマネージャを取得
        self.eventMgr = [DConnectEventManager sharedManagerForClass:[DPHostDevicePlugin class]];
        
        [UIDevice currentDevice].batteryMonitoringEnabled = YES;
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(sendOnBatteryChangeEvent:)
                                                     name:UIDeviceBatteryLevelDidChangeNotification
                                                   object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(sendOnChargingChangeEvent:)
                                                     name:UIDeviceBatteryStateDidChangeNotification
                                                   object:nil];
        
    }
    return self;
}

- (void)dealloc
{
    // 通知の受領をやめる。
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void) sendOnChargingChangeEvent:(NSNotification *)notification
{
    // イベントの取得
    NSArray *evts = [_eventMgr eventListForServiceId:ServiceDiscoveryServiceId
                                            profile:DConnectBatteryProfileName
                                          attribute:DConnectBatteryProfileAttrOnChargingChange];
    // イベント送信
    for (DConnectEvent *evt in evts) {
        DConnectMessage *eventMsg = [DConnectEventManager createEventMessageWithEvent:evt];
        DConnectMessage *battery = [DConnectMessage message];
        BOOL charging;
        switch ([notification.object batteryState]) {
            case UIDeviceBatteryStateFull:
            case UIDeviceBatteryStateCharging:
                charging = YES;
                break;
            case UIDeviceBatteryStateUnplugged:
                charging = NO;
                break;
            case UIDeviceBatteryStateUnknown:
            default:
                // 未知のステータス；イベントをそもそも発送しない。
                return;
        }
        [DConnectBatteryProfile setCharging:charging target:battery];
        [DConnectBatteryProfile setBattery:battery target:eventMsg];
        
        [SELF_PLUGIN sendEvent:eventMsg];
    }
}

- (void) sendOnBatteryChangeEvent:(NSNotification *)notification
{
    // イベントの取得
    NSArray *evts = [_eventMgr eventListForServiceId:ServiceDiscoveryServiceId
                                            profile:DConnectBatteryProfileName
                                          attribute:DConnectBatteryProfileAttrOnBatteryChange];
    // イベント送信
    for (DConnectEvent *evt in evts) {
        DConnectMessage *eventMsg = [DConnectEventManager createEventMessageWithEvent:evt];
        DConnectMessage *battery = [DConnectMessage message];
        float level = [notification.object batteryLevel];
        if (level < 0) {
            // 未知のステータス；イベントをそもそも発送しない。
            return;
        }
        [DConnectBatteryProfile setLevel:level target:battery];
        [DConnectBatteryProfile setBattery:battery target:eventMsg];
        
        [SELF_PLUGIN sendEvent:eventMsg];
    }
}

#pragma mark - Get Methods

- (BOOL)        profile:(DConnectBatteryProfile *)profile
didReceiveGetAllRequest:(DConnectRequestMessage *)request
               response:(DConnectResponseMessage *)response
               serviceId:(NSString *)serviceId
{
    float level = [[UIDevice currentDevice] batteryLevel];
    NSNumber *charging;
    switch ([[UIDevice currentDevice] batteryState]) {
        case UIDeviceBatteryStateFull:
        case UIDeviceBatteryStateCharging:
            charging = @YES;
            break;
        case UIDeviceBatteryStateUnplugged:
            charging = @NO;
            break;
        case UIDeviceBatteryStateUnknown:
        default:
            // 未知のステータス
            charging = nil;
            break;
    }
    if (level >= 0 && level <= 1) {
        [DConnectBatteryProfile setLevel:level target:response];
    }
    if (charging) {
        [DConnectBatteryProfile setCharging:[charging boolValue] target:response];
    }
    if ((level >= 0 && level <= 1) || charging) {
        [response setResult:DConnectMessageResultTypeOk];
    } else {
        // 未知のステータス；エラーレスポンスを返す。
        [response setErrorToUnknownWithMessage:@"Battery status is unknown."];
    }
    return YES;
}

- (BOOL)          profile:(DConnectBatteryProfile *)profile
didReceiveGetLevelRequest:(DConnectRequestMessage *)request
                 response:(DConnectResponseMessage *)response
                 serviceId:(NSString *)serviceId
{
    float level = [[UIDevice currentDevice] batteryLevel];
    if (level < 0 || level > 1) {
        // 未知のステータス；エラーレスポンスを返す。
        [response setErrorToUnknownWithMessage:@"Battery status is unknown."];
    } else {
        [DConnectBatteryProfile setLevel:level target:response];
        [response setResult:DConnectMessageResultTypeOk];
    }
    return YES;
}

- (BOOL)             profile:(DConnectBatteryProfile *)profile
didReceiveGetChargingRequest:(DConnectRequestMessage *)request
                    response:(DConnectResponseMessage *)response
                    serviceId:(NSString *)serviceId
{
    NSNumber *charging;
    switch ([[UIDevice currentDevice] batteryState]) {
        case UIDeviceBatteryStateFull:
        case UIDeviceBatteryStateCharging:
            charging = @YES;
            break;
        case UIDeviceBatteryStateUnplugged:
            charging = @NO;
            break;
        case UIDeviceBatteryStateUnknown:
        default:
            // 未知のステータス；エラーレスポンスを返す。
            [response setErrorToUnknownWithMessage:@"Battery status is unknown."];
            return YES;
    }
    [DConnectBatteryProfile setCharging:[charging boolValue] target:response];
    [response setResult:DConnectMessageResultTypeOk];
    return YES;
}

#pragma mark - Put Methods
#pragma mark Event Registration

- (BOOL)                     profile:(DConnectBatteryProfile *)profile
didReceivePutOnChargingChangeRequest:(DConnectRequestMessage *)request
                            response:(DConnectResponseMessage *)response
                            serviceId:(NSString *)serviceId
                          sessionKey:(NSString *)sessionKey
{
    switch ([_eventMgr addEventForRequest:request]) {
        case DConnectEventErrorNone:             // エラー無し.
            [response setResult:DConnectMessageResultTypeOk];
            break;
        case DConnectEventErrorInvalidParameter: // 不正なパラメータ.
            [response setErrorToInvalidRequestParameter];
            break;
        case DConnectEventErrorNotFound:         // マッチするイベント無し.
        case DConnectEventErrorFailed:           // 処理失敗.
            [response setErrorToUnknown];
            break;
    }
    
    return YES;
}

- (BOOL)                    profile:(DConnectBatteryProfile *)profile
didReceivePutOnBatteryChangeRequest:(DConnectRequestMessage *)request
                           response:(DConnectResponseMessage *)response
                           serviceId:(NSString *)serviceId
                         sessionKey:(NSString *)sessionKey
{
    switch ([_eventMgr addEventForRequest:request]) {
        case DConnectEventErrorNone:             // エラー無し.
            [response setResult:DConnectMessageResultTypeOk];
            break;
        case DConnectEventErrorInvalidParameter: // 不正なパラメータ.
            [response setErrorToInvalidRequestParameter];
            break;
        case DConnectEventErrorNotFound:         // マッチするイベント無し.
        case DConnectEventErrorFailed:           // 処理失敗.
            [response setErrorToUnknown];
            break;
    }
    
    return YES;
}

#pragma mark - Delete Methods
#pragma mark Event Unregistration

- (BOOL)                        profile:(DConnectBatteryProfile *)profile
didReceiveDeleteOnChargingChangeRequest:(DConnectRequestMessage *)request
                               response:(DConnectResponseMessage *)response
                               serviceId:(NSString *)serviceId
                             sessionKey:(NSString *)sessionKey
{
    switch ([_eventMgr removeEventForRequest:request]) {
        case DConnectEventErrorNone:             // エラー無し.
            [response setResult:DConnectMessageResultTypeOk];
            break;
        case DConnectEventErrorInvalidParameter: // 不正なパラメータ.
            [response setErrorToInvalidRequestParameter];
            break;
        case DConnectEventErrorNotFound:         // マッチするイベント無し.
        case DConnectEventErrorFailed:           // 処理失敗.
            [response setErrorToUnknown];
            break;
    }
    
    return YES;
}

- (BOOL)                       profile:(DConnectBatteryProfile *)profile
didReceiveDeleteOnBatteryChangeRequest:(DConnectRequestMessage *)request
                              response:(DConnectResponseMessage *)response
                              serviceId:(NSString *)serviceId
                            sessionKey:(NSString *)sessionKey
{
    switch ([_eventMgr removeEventForRequest:request]) {
        case DConnectEventErrorNone:             // エラー無し.
            [response setResult:DConnectMessageResultTypeOk];
            break;
        case DConnectEventErrorInvalidParameter: // 不正なパラメータ.
            [response setErrorToInvalidRequestParameter];
            break;
        case DConnectEventErrorNotFound:         // マッチするイベント無し.
        case DConnectEventErrorFailed:           // 処理失敗.
            [response setErrorToUnknown];
            break;
    }
    
    return YES;
}

@end
