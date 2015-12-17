//
//  RFStop.m
//  TransitSample
//
//  Created by Roberto Ferraz on 13/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import "RFStop.h"

@implementation RFStop

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{ @"latitude": @"lat",
              @"longitude": @"lng",
              @"datetime": @"datetime",
              @"name": @"name"
              };
}

@end
