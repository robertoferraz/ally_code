//
//  RFSegment.h
//  TransitSample
//
//  Created by Roberto Ferraz on 13/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface RFSegment : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong) NSString *polyline;
@property (nonatomic, strong) NSString *color;
@property (nonatomic, strong) NSString *travelMode;
@property (nonatomic, strong) NSString *iconUrl;
@property (nonatomic, strong) NSNumber *numStops;
@property (nonatomic, strong) NSArray  *stops;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *segmentDescription;

- (NSTimeInterval)duration;
- (NSDate *)departureDate;
- (NSDate *)arrivalDate;

@end
