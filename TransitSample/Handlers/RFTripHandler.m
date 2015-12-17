//
//  RFTripHandler.m
//  TransitSample
//
//  Created by Roberto Ferraz on 17/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import "RFTripHandler.h"
#import "RFTrip.h"

@implementation RFTripHandler

+ (RFTripHandler *)sharedInstance
{
    static RFTripHandler *sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[RFTripHandler alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        [self setTrip:[RFTrip new]];
    }
    return self;
}

@end
