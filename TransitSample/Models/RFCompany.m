//
//  RFCompany.m
//  TransitSample
//
//  Created by Roberto Ferraz on 13/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import "RFCompany.h"

@implementation RFCompany

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{ @"name": @"name",
              @"phone": @"phone"
              };
}

@end
