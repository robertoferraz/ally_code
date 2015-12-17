//
//  RFMapView.m
//  TransitSample
//
//  Created by Roberto Ferraz on 15/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import "RFMapView.h"
#import <HexColors/HexColors.h>
#import "UIView+Constraints.h"
#import "RFPolyline.h"

@import MapKit;

@interface RFMapView () <MKMapViewDelegate>

@property (nonatomic, weak) MKMapView *mapView;

@end

#define POLYLINE_WIDTH 5

@implementation RFMapView

- (void)awakeFromNib
{
    [super awakeFromNib];
    [self setupMap];
}

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        [self setupMap];
    }
    return self;
}

- (void)setupMap
{
    MKMapView *mapView = [[MKMapView alloc] initWithFrame:self.bounds];
    [self addSubview:mapView];
    [self setMapView:mapView];
    
    [self.mapView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.mapView addConstraintsToFillParentHorizontally:self];
    [self.mapView addConstraintsToFillParentVertically:self];
    [self.mapView setShowsUserLocation:YES];
    [self.mapView setDelegate:self];
}

- (void)drawPolyline:(RFPolyline *)polyline
{
    [self.mapView addOverlay:(id)polyline];
}

- (void)zoomToFitRoutes
{
    __block MKMapRect rect = MKMapRectNull;
    
    [self.mapView.overlays enumerateObjectsUsingBlock:^(id<MKOverlay>  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        rect = MKMapRectUnion(rect, obj.boundingMapRect);
    }];
    
    [self.mapView setVisibleMapRect:rect animated:YES];
}

- (MKOverlayRenderer *)mapView:(MKMapView *)mapView rendererForOverlay:(id<MKOverlay>)overlay
{
    if ([overlay isKindOfClass:[MKPolyline class]])
    {
        RFPolyline *polyline = (RFPolyline *)overlay;
        
        MKPolylineRenderer *polylineView = [[MKPolylineRenderer alloc] initWithPolyline:overlay];
        [polylineView setLineWidth:POLYLINE_WIDTH];
        [polylineView setStrokeColor:polyline.color];
        
        return polylineView;
    }
    return nil;
}

@end
