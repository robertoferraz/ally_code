//
//  RFProperty.h
//  TransitSample
//
//  Created by Roberto Ferraz on 13/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface RFProperty : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong) NSString *address;
@property (nonatomic, strong) NSString *model;
@property (nonatomic, strong) NSNumber *fuelLevel;
@property (nonatomic, strong) NSString *internalCleanliness;
@property (nonatomic, strong) NSNumber *seats;
@property (nonatomic, strong) NSString *licensePlate;
@property (nonatomic, strong) NSString *engineType;
@property (nonatomic, strong) NSString *propertyDescription;
@property (nonatomic, strong) NSNumber *doors;
@property (nonatomic, strong) NSArray  *companies;

@end
