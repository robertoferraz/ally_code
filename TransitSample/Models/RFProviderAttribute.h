//
//  RFProviderAttribute.h
//  TransitSample
//
//  Created by Roberto Ferraz on 14/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import <Mantle/Mantle.h>

@class RFProvider;

@interface RFProviderAttribute : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong) RFProvider *vbb;
@property (nonatomic, strong) RFProvider *driveNow;
@property (nonatomic, strong) RFProvider *car2go;
@property (nonatomic, strong) RFProvider *google;
@property (nonatomic, strong) RFProvider *nextBike;
@property (nonatomic, strong) RFProvider *callABike;

@end
