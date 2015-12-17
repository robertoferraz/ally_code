//
//  RFStop.h
//  TransitSample
//
//  Created by Roberto Ferraz on 13/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface RFStop : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong) NSNumber *latitude;
@property (nonatomic, strong) NSNumber *longitude;
@property (nonatomic, strong) NSString *datetime;
@property (nonatomic, strong) NSString *name;

@end
