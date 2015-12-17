//
//  RFProvider.h
//  TransitSample
//
//  Created by Roberto Ferraz on 13/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface RFProvider : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong) NSString *disclaimer;
@property (nonatomic, strong) NSString *iosItunesUrl;
@property (nonatomic, strong) NSString *providerIconUrl;
@property (nonatomic, strong) NSString *iosAppUrl;
@property (nonatomic, strong) NSString *displayName;
@property (nonatomic, strong) NSString *androidPackageName;

@end
