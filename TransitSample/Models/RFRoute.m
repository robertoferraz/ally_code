//
//  RFRoute.m
//  TransitSample
//
//  Created by Roberto Ferraz on 13/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import "RFRoute.h"
#import "RFSegment.h"
#import "RFPrice.h"
#import "RFProperty.h"
#import "NSDate+String.h"

@implementation RFRoute

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{ @"provider": @"provider",
              @"type": @"type",
              @"segments": @"segments",
              @"properties": @"properties",
              @"price": @"price"
             };
}

- (NSString *)typeDescription
{
    if ([self.type isEqualToString:@"public_transport"])
    {
        return @"Public Transport";
    }
    
    if ([self.type isEqualToString:@"taxi"])
    {
        return @"Taxi";
    }
    
    return self.provider;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionaryValue error:(NSError *__autoreleasing *)error
{
    self = [super initWithDictionary:dictionaryValue error:error];
    
    if (self)
    {
        NSArray *segmentsArray = [dictionaryValue objectForKey:@"segments"];
        NSMutableArray *segments = [NSMutableArray new];
        
        for (NSDictionary *segmentDictionary in segmentsArray)
        {
            RFSegment *segment = [MTLJSONAdapter modelOfClass:[RFSegment class] fromJSONDictionary:segmentDictionary error:nil];
            [segments addObject:segment];
        }
        _segments = segments;
    }
    return self;
}

- (NSArray *)routeProvidersIcons
{
    NSMutableArray *icons = [NSMutableArray new];
    
    [self.segments enumerateObjectsUsingBlock:^(RFSegment *_Nonnull segment, NSUInteger idx, BOOL * _Nonnull stop) {
        
        if (segment.iconUrl)
        {
            [icons addObject:segment.iconUrl];
        }
    }];
    
    return icons;
}

- (NSString *)durationText
{
    __block NSTimeInterval totalDuration = 0;
    
    [self.segments enumerateObjectsUsingBlock:^(RFSegment *_Nonnull segment, NSUInteger idx, BOOL * _Nonnull stop) {
        
        totalDuration += [segment duration];
    }];
    
    float minutes = (totalDuration / 60);
    float hours = (totalDuration / 3600);
    
    if (hours > 1)
    {
        return [NSString stringWithFormat:@"%02ld:%02ld", (long)hours, (long)minutes];
    }
    
    if (minutes > 1)
    {
        return [NSString stringWithFormat:@"%.0f minutes", minutes];
    }
    
    return [NSString stringWithFormat:@"%.0f seconds", totalDuration];;
}

- (NSString *)timeIntervalText
{
    RFSegment *firstSegment = [self.segments firstObject];
    RFSegment *lastSegment = [self.segments lastObject];
    
    return [NSString stringWithFormat:@"%@ - %@", [[firstSegment departureDate] shortTime], [[lastSegment arrivalDate] shortTime]];
}

@end
