//
//  RFTripHandler.h
//  TransitSample
//
//  Created by Roberto Ferraz on 17/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RFTrip;

@interface RFTripHandler : NSObject

// The Trip object would be used to receive information about origin, destination, time
@property (nonatomic, strong) RFTrip *trip;

+ (RFTripHandler *)sharedInstance;

@end
