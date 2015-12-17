//
//  RFMapView.h
//  TransitSample
//
//  Created by Roberto Ferraz on 15/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RFPolyline;

// As Ally uses GMaps, I decide to encapsulate the map, so the change of map would not impact on the rest of the
// logic of the app
@interface RFMapView : UIView

- (void)drawPolyline:(RFPolyline *)polyline;
- (void)zoomToFitRoutes;

@end
