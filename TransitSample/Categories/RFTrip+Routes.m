//
//  RFTrip+Routes.m
//  TransitSample
//
//  Created by Roberto Ferraz on 13/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import "RFTrip+Routes.h"
#import "RFTransportManager.h"

@implementation RFTrip (Routes)

- (void)requestRouteWithSuccess:(RFTransportManagerSuccessBlock)success failure:(RFTransportManagerFailureBlock)failure
{
    [RFTransportManager requestTransportWithOriginCoordinate:self.coordinateOrigin destinationCoordinate:self.coordinateDestination completionBlock:^(RFTransport *transport, NSError *error) {
       
        if (error)
        {
            failure(error);
            return ;
        }
        
        success(transport);
    }];
}

@end
