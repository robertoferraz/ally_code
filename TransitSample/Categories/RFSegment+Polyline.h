//
//  RFSegment+Polyline.h
//  TransitSample
//
//  Created by Roberto Ferraz on 15/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import "RFSegment.h"
#import "RFPolyline.h"

@interface RFSegment (Polyline)

- (RFPolyline *)decodedPolyline;

@end
