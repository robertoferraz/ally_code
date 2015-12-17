//
//  RFRouteCell.m
//  TransitSample
//
//  Created by Roberto Ferraz on 15/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import "RFRouteCell.h"
#import "RFPrice.h"
#import <SVGKit/SVGKit.h>
#import "UIView+Constraints.h"

@interface RFRouteCell ()

@property (nonatomic, weak) IBOutlet UILabel *typeLabel;
@property (nonatomic, weak) IBOutlet UILabel *durationLabel;
@property (nonatomic, weak) IBOutlet UILabel *priceLabel;
@property (nonatomic, weak) IBOutlet UILabel *timeIntervalLabel;
@property (nonatomic, weak) IBOutlet UIStackView *iconsView;

@end

@implementation RFRouteCell

- (void)setRoute:(RFRoute *)route
{
    _route = route;
    
    [self.typeLabel setText:[route typeDescription]];
    [self.durationLabel setText:[route durationText]];
    [self.priceLabel setText:[self.route.price formatedPrice]];
    [self.timeIntervalLabel setText:[self.route timeIntervalText]];
    [self createIcons];
}

- (void)createIcons
{
    // svg icons
}

@end
