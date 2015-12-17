//
//  RFPrice.m
//  TransitSample
//
//  Created by Roberto Ferraz on 13/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import "RFPrice.h"

@implementation RFPrice

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{ @"currency": @"currency",
              @"amount": @"amount"
              };
}

- (NSString *)formatedPrice
{
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    
    [formatter setCurrencyCode:self.currency];
    [formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    [formatter setMaximumFractionDigits:2];
    
    return [formatter stringFromNumber:self.amount];
}

@end
