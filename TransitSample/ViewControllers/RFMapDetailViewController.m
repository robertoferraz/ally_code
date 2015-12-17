//
//  RFMapDetailViewController.m
//  TransitSample
//
//  Created by Roberto Ferraz on 15/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import "RFMapDetailViewController.h"
#import "RFSegment+Polyline.h"
#import "UIView+Constraints.h"
#import "RFTrip+Routes.h"
#import "RFTransport.h"
#import "RFMapView.h"
#import "RFSegment.h"
#import "RFRoute.h"

@interface RFMapDetailViewController ()

@property (nonatomic, weak) RFMapView *mapView;

@end

@implementation RFMapDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    RFMapView *mapView = [RFMapView new];
    [self.view addSubview:mapView];
    [self setMapView:mapView];
    
    [self.mapView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.mapView addConstraintsToFillParentHorizontally:self.view];
    [self.mapView addConstraintsToFillParentVertically:self.view];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self drawRouteSegments:self.route.segments];
}

- (void)drawRouteSegments:(NSArray *)segments
{
    [segments enumerateObjectsUsingBlock:^(RFSegment *_Nonnull segment, NSUInteger idx, BOOL * _Nonnull stop) {
        if (segment.polyline)
        {
            [self.mapView drawPolyline:[segment decodedPolyline]];
        }
    }];
    
    [self.mapView zoomToFitRoutes];
}

@end
