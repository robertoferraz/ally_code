//
//  RFTransport.h
//  TransitSample
//
//  Created by Roberto Ferraz on 13/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import <Mantle/Mantle.h>

@class RFProviderAttribute;

@interface RFTransport : MTLModel <MTLJSONSerializing>

// ProviderAttribute could be a dictionary to allow the addition of new providers without the need
// to release a new app, decided to make it a class to make this sample cleaner
@property (nonatomic, strong) RFProviderAttribute *providerAttributes;
@property (nonatomic, strong) NSArray *routes;

@end
