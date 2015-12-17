//
//  RFRoute.h
//  TransitSample
//
//  Created by Roberto Ferraz on 13/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import <Mantle/Mantle.h>

@class RFPrice;
@class RFProperty;

@interface RFRoute : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong) NSString *provider;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSArray *segments;
@property (nonatomic, strong) RFPrice  *price;
@property (nonatomic, strong) RFProperty *properties;

- (NSArray *)routeProvidersIcons;
- (NSString *)timeIntervalText;
- (NSString *)typeDescription;
- (NSString *)durationText;

@end
