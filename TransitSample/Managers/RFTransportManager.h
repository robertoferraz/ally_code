//
//  RFTransportManager.h
//  TransitSample
//
//  Created by Roberto Ferraz on 13/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@class RFTransport;

typedef void(^RFTransportManagerCompletionBlock)(RFTransport *transport, NSError *error);

@interface RFTransportManager : NSObject

// What could be a backend request
+ (void)requestTransportWithOriginCoordinate:(CLLocationCoordinate2D)originCoordinate destinationCoordinate:(CLLocationCoordinate2D)destinationCoordinate completionBlock:(RFTransportManagerCompletionBlock)completion;

@end
