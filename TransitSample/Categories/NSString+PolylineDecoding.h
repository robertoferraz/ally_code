//
//  NSString+PolylineDecoding.h
//  TransitSample
//
//  Created by Roberto Ferraz on 15/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RFPolyline.h"
@import MapKit;

@interface NSString (PolylineDecoding)

- (RFPolyline *)decodedPolyline;

@end
