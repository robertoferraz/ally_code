//
//  RFTrip.h
//  TransitSample
//
//  Created by Roberto Ferraz on 13/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface RFTrip : NSObject

@property (nonatomic, strong) NSString *addressOrigin;
@property (nonatomic, strong) NSString *addressDestination;
@property (nonatomic, assign) CLLocationCoordinate2D coordinateOrigin;
@property (nonatomic, assign) CLLocationCoordinate2D coordinateDestination;

@end
