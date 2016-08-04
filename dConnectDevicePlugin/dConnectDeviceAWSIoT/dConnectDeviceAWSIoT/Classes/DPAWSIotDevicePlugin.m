//
//  DPAWSIotDevicePlugin.m
//  dConnectDeviceAWSIoT
//
//  Copyright (c) 2016 NTT DOCOMO, INC.
//  Released under the MIT license
//  http://opensource.org/licenses/mit-license.php
//

#import "DPAWSIotDevicePlugin.h"
#import "DPAWSIoTServiceDiscoveryProfile.h"

@implementation DPAWSIotDevicePlugin

- (id) init {
	self = [super init];
	if (self) {
		self.pluginName = @"AWSIoT (Device Connect Device Plug-in)";
		
		// イベントマネージャの準備
		Class key = [self class];
		[[DConnectEventManager sharedManagerForClass:key]
		 setController:[DConnectDBCacheController
						controllerWithClass:key]];
		
		// プロファイルを追加
		[self addProfile:[DPAWSIoTServiceDiscoveryProfile new]];
		[self addProfile:[DConnectServiceInformationProfile new]];
	}
	
	return self;
}

@end
