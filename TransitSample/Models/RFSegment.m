//
//  RFSegment.m
//  TransitSample
//
//  Created by Roberto Ferraz on 13/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import "RFSegment.h"
#import "NSString+Date.h"
#import "RFStop.h"

@implementation RFSegment

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{ @"name": @"name",
              @"numStops": @"num_stops",
              @"stops": @"stops",
              @"travelMode": @"travel_mode",
              @"segmentDescription": @"description",
              @"color": @"color",
              @"iconUrl": @"icon_url",
              @"polyline": @"polyline"
              };
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionaryValue error:(NSError *__autoreleasing *)error
{
    self = [super initWithDictionary:dictionaryValue error:error];
    
    if (self)
    {
        NSArray *stopsArray = [dictionaryValue objectForKey:@"stops"];
        NSMutableArray *stops = [NSMutableArray new];
        
        for (NSDictionary *stopDictionary in stopsArray)
        {
            RFStop *stop = [MTLJSONAdapter modelOfClass:[RFStop class] fromJSONDictionary:stopDictionary error:nil];
            [stops addObject:stop];
        }
        
        _stops = stops;
    }
    return self;
}

- (NSTimeInterval)duration
{
    if (!self.stops || [self.stops count] < 2)
    {
        return 0;
    }
    
    NSDate *initialDate = [self departureDate];
    NSDate *finalDate = [self arrivalDate];
    
    return [finalDate timeIntervalSinceDate:initialDate];
}

- (NSDate *)departureDate
{
    RFStop *startingPoint = [self.stops firstObject];
    return [startingPoint.datetime dateFromISO8601];
}

- (NSDate *)arrivalDate
{
    RFStop *finalPoint = [self.stops lastObject];
    return [finalPoint.datetime dateFromISO8601];
}

@end
