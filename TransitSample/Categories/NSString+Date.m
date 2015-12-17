//
//  NSString+Date.m
//  TransitSample
//
//  Created by Roberto Ferraz on 15/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import "NSString+Date.h"

@implementation NSString (Date)

- (NSDate *)dateFromISO8601
{
    static NSDateFormatter *dateFormatterFromISO8601 = nil;
    if (!dateFormatterFromISO8601)
    {
        dateFormatterFromISO8601 = [[NSDateFormatter alloc] init];
        [dateFormatterFromISO8601 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
    }
    
    return [dateFormatterFromISO8601 dateFromString:self];
}

@end
