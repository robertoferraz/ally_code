//
//  RFProvider.m
//  TransitSample
//
//  Created by Roberto Ferraz on 13/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import "RFProvider.h"

@implementation RFProvider

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{ @"disclaimer": @"disclaimer",
              @"iosItunesUrl": @"ios_itunes_url",
              @"providerIconUrl": @"provider_icon_url",
              @"iosAppUrl": @"ios_app_url",
              @"displayName": @"display_name",
              @"androidPackageName": @"android_package_name"
              };
}

@end
