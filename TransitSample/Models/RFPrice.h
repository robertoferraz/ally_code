//
//  RFPrice.h
//  TransitSample
//
//  Created by Roberto Ferraz on 13/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface RFPrice : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong) NSString *currency;
@property (nonatomic, strong) NSNumber *amount;

- (NSString *)formatedPrice;

@end
