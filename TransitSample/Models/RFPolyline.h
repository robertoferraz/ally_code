//
//  RFPolyline.h
//  TransitSample
//
//  Created by Roberto Ferraz on 15/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import <MapKit/MapKit.h>

@interface RFPolyline : MKPolyline <MKOverlay>

@property (nonatomic, strong) UIColor *color;

@end
