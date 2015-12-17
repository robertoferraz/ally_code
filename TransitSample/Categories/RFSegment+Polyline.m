//
//  RFSegment+Polyline.m
//  TransitSample
//
//  Created by Roberto Ferraz on 15/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import "RFSegment+Polyline.h"
#include "NSString+PolylineDecoding.h"
#import <HexColors/HexColors.h>

@implementation RFSegment (Polyline)

- (RFPolyline *)decodedPolyline
{
    RFPolyline *polyline = [self.polyline decodedPolyline];
    [polyline setColor:[HXColor hx_colorWithHexString:self.color]];
    
    return polyline;
}

@end
