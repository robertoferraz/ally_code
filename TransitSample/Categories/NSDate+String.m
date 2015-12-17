//
//  NSDate+String.m
//  TransitSample
//
//  Created by Roberto Ferraz on 17/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import "NSDate+String.h"

@implementation NSDate (String)

- (NSString *)shortTime
{
    static NSDateFormatter *shortTimeStringFormatter = nil;
    
    if (!shortTimeStringFormatter)
    {
        shortTimeStringFormatter = [[NSDateFormatter alloc] init];
        [shortTimeStringFormatter setDateStyle:NSDateFormatterNoStyle];
        [shortTimeStringFormatter setTimeStyle:NSDateFormatterShortStyle];
    }
    return [shortTimeStringFormatter stringFromDate:self];
}

@end
