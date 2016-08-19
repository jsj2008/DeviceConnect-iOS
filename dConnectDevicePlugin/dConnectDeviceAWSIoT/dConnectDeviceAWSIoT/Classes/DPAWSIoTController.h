//
//  DPAWSIoTController.h
//  dConnectDeviceAWSIoT
//
//  Copyright (c) 2016 NTT DOCOMO, INC.
//  Released under the MIT license
//  http://opensource.org/licenses/mit-license.php
//

#import <Foundation/Foundation.h>

@interface DPAWSIoTController : NSObject

// 共有インスタンス
+ (instancetype)sharedManager;

// ManagerUUIDを返す
+ (NSString*)managerUUID;
// ManagerNameを返す
+ (NSString*)managerName;

// Shadowからデバイス情報を取得する
+ (void)fetchManagerInfoWithHandler:(void (^)(NSDictionary *managers, NSDictionary *myInfo, NSError *error))handler;
// 自分のデバイス情報をShadowに登録
+ (void)setManagerInfo:(BOOL)online handler:(void (^)(NSError *error))handler;

// RequestTopic購読
+ (void)subscribeRequest;
// RequestTopic購読解除
+ (void)unsubscribeRequest;


@end
