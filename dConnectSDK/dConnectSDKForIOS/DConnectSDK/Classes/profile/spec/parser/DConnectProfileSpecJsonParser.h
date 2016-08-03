//
//  DConnectProfileSpecJsonParser.h
//  DConnectSDK
//
//  Copyright (c) 2016 NTT DOCOMO,INC.
//  Released under the MIT license
//  http://opensource.org/licenses/mit-license.php
//

#import <Foundation/Foundation.h>
#import "DConnectProfileSpec.h"

@interface DConnectProfileSpecJsonParser : NSObject

- (DConnectProfileSpec *) parseJson: (NSString *) jsonFilename;

@end
