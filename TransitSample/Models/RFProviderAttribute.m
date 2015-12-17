//
//  RFProviderAttribute.m
//  TransitSample
//
//  Created by Roberto Ferraz on 14/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import "RFProviderAttribute.h"
#import "RFProvider.h"

@implementation RFProviderAttribute

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{@"vbb": @"vbb",
             @"driveNow": @"drivenow",
             @"car2go": @"car2go",
             @"google": @"google",
             @"nextBike": @"nextbike",
             @"callABike": @"callabike"
             };
}

@end
