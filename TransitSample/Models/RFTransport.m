//
//  RFTransport.m
//  TransitSample
//
//  Created by Roberto Ferraz on 13/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import "RFTransport.h"
#import "RFProviderAttribute.h"
#import "RFRoute.h"

@implementation RFTransport

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"routes": @"routes",
             @"providerAttributes": @"provider_attributes"
             };
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionaryValue error:(NSError *__autoreleasing *)error {
    self = [super initWithDictionary:dictionaryValue error:error];
    
    if (self)
    {
        NSDictionary *providerAttributesDictionary = [dictionaryValue objectForKey:@"provider_attributes"];
        NSArray *routesArray = [dictionaryValue objectForKey:@"routes"];
        
        if (providerAttributesDictionary && ![providerAttributesDictionary isKindOfClass:[NSNull class]])
        {
            _providerAttributes = [MTLJSONAdapter modelOfClass:[RFProviderAttribute class] fromJSONDictionary:providerAttributesDictionary error:nil];
        }
        
        NSMutableArray *routes = [NSMutableArray new];
        
        for (NSDictionary *routeDictionary in routesArray)
        {
            RFRoute *route = [MTLJSONAdapter modelOfClass:[RFRoute class] fromJSONDictionary:routeDictionary error:nil];
            [routes addObject:route];
        }
        
        _routes = routes;
    }
    
    return self;
}

@end
