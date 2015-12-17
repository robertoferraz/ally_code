//
//  RFTrip+Routes.h
//  TransitSample
//
//  Created by Roberto Ferraz on 13/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import "RFTrip.h"

@class RFTransport;

typedef void(^RFTransportManagerSuccessBlock)(RFTransport *transport);
typedef void(^RFTransportManagerFailureBlock)(NSError *error);

@interface RFTrip (Routes)

- (void)requestRouteWithSuccess:(RFTransportManagerSuccessBlock)success failure:(RFTransportManagerFailureBlock)failure;

@end
