//
//  RFProperty.m
//  TransitSample
//
//  Created by Roberto Ferraz on 13/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import "RFProperty.h"
#import "RFCompany.h"

@implementation RFProperty

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{ @"address": @"address",
              @"model": @"model",
              @"fuelLevel": @"fuel_level",
              @"internalCleanliness": @"internal_cleanliness",
              @"seats": @"seats",
              @"licensePlate": @"license_plate",
              @"engineType": @"engine_type",
              @"propertyDescription": @"description",
              @"doors": @"doors",
              @"companies": @"companies"
              };
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionaryValue error:(NSError *__autoreleasing *)error
{
    self = [super initWithDictionary:dictionaryValue error:error];
    
    if (self)
    {
        NSArray *companiesArray = [dictionaryValue objectForKey:@"companies"];
        NSMutableArray *companies = [NSMutableArray new];
        
        for (NSDictionary *companyDictionary in companiesArray)
        {
            RFCompany *company = [MTLJSONAdapter modelOfClass:[RFCompany class] fromJSONDictionary:companyDictionary error:nil];
            [companies addObject:company];
        }
        _companies = companies;
    }
    return self;
}

@end
