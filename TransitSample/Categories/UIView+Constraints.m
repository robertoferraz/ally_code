//
//  UIView+Constraints.h
//  Utils
//
//  Created by Roberto Ferraz on 11/12/13.
//  Copyright Roberto Ferraz. All rights reserved.
//

#import "UIView+Constraints.h"

@implementation UIView (Constraints)

- (void)addConstraintsToFillParentHorizontally:(UIView *)parentView
{
    [parentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[view]|" options:0 metrics:nil views:@{ @"view": self }]];
}

- (void)addConstraintsToFillParentHorizontally:(UIView *)parentView withPadding:(CGFloat)padding
{
    [parentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-padding-[view]-padding-|" options:0 metrics:@{ @"padding": [NSNumber numberWithFloat:padding] } views:@{ @"view": self }]];
}

- (void)addConstraintsToFillParentVertically:(UIView *)parentView
{
    [parentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:nil views:@{ @"view": self }]];
}

- (void)addConstraintsToFillParentVertically:(UIView *)parentView withOffset:(CGFloat)offset
{
    [parentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]-offset-|" options:0 metrics:@{ @"offset": [NSNumber numberWithFloat:offset] } views:@{ @"view": self }]];
}

- (void)addConstraintsToFillParentVertically:(UIView *)parentView withPadding:(CGFloat)padding
{
    [parentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-padding-[view]-padding-|" options:0 metrics:@{ @"padding": [NSNumber numberWithFloat:padding] } views:@{ @"view": self }]];
}

- (void)addConstraintsToCenterHorizontallyInParent:(UIView *)parentView
{
    NSLayoutConstraint *centerXConstraint = [NSLayoutConstraint constraintWithItem:self
                                 attribute:NSLayoutAttributeCenterX
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:parentView
                                 attribute:NSLayoutAttributeCenterX
                                multiplier:1.f constant:0.f];
    [parentView addConstraint:centerXConstraint];
}

- (void)addConstraintsToCenterVerticallyInParent:(UIView *)parentView
{
    NSLayoutConstraint *centerXConstraint = [NSLayoutConstraint constraintWithItem:self
                                                                         attribute:NSLayoutAttributeCenterY
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:parentView
                                                                         attribute:NSLayoutAttributeCenterY
                                                                        multiplier:1.f constant:0.f];
    [parentView addConstraint:centerXConstraint];
}

- (NSLayoutConstraint *)addConstraintsToCenterVerticallyInParent:(UIView *)parentView withOffset:(CGFloat)offset
{
    NSLayoutConstraint *centerXConstraint = [NSLayoutConstraint constraintWithItem:self
                                                                         attribute:NSLayoutAttributeCenterY
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:parentView
                                                                         attribute:NSLayoutAttributeCenterY
                                                                        multiplier:1.f constant:offset];
    [parentView addConstraint:centerXConstraint];
    return centerXConstraint;
}

- (void)addConstraintsToCenterInParent:(UIView *)parentView
{
    NSLayoutConstraint *centerXConstraint = [NSLayoutConstraint constraintWithItem:self
                                                                         attribute:NSLayoutAttributeCenterX
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:parentView
                                                                         attribute:NSLayoutAttributeCenterX
                                                                        multiplier:1.f constant:0.f];
    [parentView addConstraint:centerXConstraint];
    
    NSLayoutConstraint *centerYConstraint = [NSLayoutConstraint constraintWithItem:self
                                                                         attribute:NSLayoutAttributeCenterY
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:parentView
                                                                         attribute:NSLayoutAttributeCenterY
                                                                        multiplier:1.f constant:0.f];
    [parentView addConstraint:centerYConstraint];
}

- (void)addConstraintsToCenterHorizontallyInParent:(UIView *)parentView withWidth:(CGFloat)width
{
    NSLayoutConstraint *centerXConstraint = [NSLayoutConstraint constraintWithItem:self
                                                                         attribute:NSLayoutAttributeCenterX
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:parentView
                                                                         attribute:NSLayoutAttributeCenterX
                                                                        multiplier:1.0
                                                                          constant:0.0];
    [parentView addConstraint:centerXConstraint];
    
    [parentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[view(==width)]" options:0 metrics:@{ @"width": [NSNumber numberWithFloat:width ] } views:@{ @"view": self }]];
}

- (void)addConstraintsToHorizontallyAlignInParent:(UIView *)parentView withLeftOffset:(CGFloat)leftOffset andRightOffset:(CGFloat)rightOffset
{
    [parentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-leftOffset-[childView]-rightOffset-|"
                                                                   options:0
                                                                   metrics:@{ @"rightOffset": [NSNumber numberWithFloat:rightOffset], @"leftOffset": [NSNumber numberWithFloat:leftOffset] }
                                                                     views:@{ @"childView": self }]];
}

- (void)addConstraintsToVerticallyAlignInParent:(UIView *)parentView withTopOffset:(CGFloat)topOffset andBottomOffset:(CGFloat)bottomOffset
{
    [parentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-topOffset-[childView]-bottomOffset-|"
                                                                   options:0
                                                                   metrics:@{ @"topOffset": [NSNumber numberWithFloat:topOffset], @"bottomOffset": [NSNumber numberWithFloat:bottomOffset] }
                                                                     views:@{ @"childView": self }]];
}

- (NSLayoutConstraint *)addConstraintsToVerticallyAlignInParent:(UIView *)parentView withTopOffset:(CGFloat)topOffset andHeight:(CGFloat)height
{
    NSArray *constraints = [self addConstraintsToParentView:parentView forHeight:height];
    [parentView addConstraints:constraints];
    [parentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-topOffset-[childView]"
                                                                       options:0
                                                                       metrics:@{ @"topOffset": [NSNumber numberWithFloat:topOffset] }
                                                                         views:@{ @"childView": self }]];
    return [constraints firstObject];
}

- (void)addConstraintsToVerticallyAlignInParent:(UIView *)parentView withBottomOffset:(CGFloat)bottomOffset andHeight:(CGFloat)height
{
    [parentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[childView(==height)]-bottomOffset-|"
                                                                   options:0
                                                                   metrics:@{ @"bottomOffset": [NSNumber numberWithFloat:bottomOffset], @"height": [NSNumber numberWithFloat:height] }
                                                                     views:@{ @"childView": self }]];
}

- (NSArray *)addConstraintsToParentView:(UIView *)parentView forHeight:(CGFloat)height
{
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[view(==height)]" options:0 metrics:@{ @"height": [NSNumber numberWithFloat:height] } views:@{ @"view": self }];
    [parentView addConstraints:constraints];
    return constraints;
}

- (void)addConstraintsToParentView:(UIView *)parentView forBottomSpace:(CGFloat)space
{
    [parentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[view]-space-|" options:0 metrics:@{ @"space": [NSNumber numberWithFloat:space] } views:@{ @"view": self }]];
}

- (NSLayoutConstraint *)addConstraintsToParentView:(UIView *)parentView forWidth:(CGFloat)width
{
    NSLayoutConstraint *widthConstraint = [[NSLayoutConstraint constraintsWithVisualFormat:@"H:[view(==width)]" options:0 metrics:@{ @"width": [NSNumber numberWithFloat:width] } views:@{ @"view": self }] firstObject];
    [parentView addConstraint:widthConstraint];
    return widthConstraint;
}

- (NSLayoutConstraint *)addConstraintsToParentView:(UIView *)parentView forVerticalOffset:(CGFloat)verticalOffset
{
    NSLayoutConstraint *verticalOffsetConstraint = [[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-verticalOffset-[view]" options:0 metrics:@{ @"verticalOffset": [NSNumber numberWithFloat:verticalOffset] } views:@{ @"view": self }] firstObject];
    [parentView addConstraint:verticalOffsetConstraint];
    return verticalOffsetConstraint;
}

- (void)addConstraintsToAlignLeftInParent:(UIView *)parentView withOffset:(CGFloat)offset
{
    [parentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-offset-[view]" options:0 metrics:@{ @"offset": [NSNumber numberWithFloat:offset] } views:@{ @"view": self }]];
}

- (void)addConstraintsToAlignRightInParent:(UIView *)parentView withOffset:(CGFloat)offset
{
    [parentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[view]-offset-|" options:0 metrics:@{ @"offset": [NSNumber numberWithFloat:offset] } views:@{ @"view": self }]];
}

- (NSArray *)addConstraintsToAlignTopInParent:(UIView *)parentView withOffset:(CGFloat)offset
{
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-offset-[view]" options:0 metrics:@{ @"offset": [NSNumber numberWithFloat:offset] } views:@{ @"view": self }];
    [parentView addConstraints:constraints];
    return constraints;
}

- (NSLayoutConstraint *)addConstraintsToAlignBottomInParent:(UIView *)parentView withOffset:(CGFloat)offset
{
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[view]-offset-|" options:0 metrics:@{ @"offset": [NSNumber numberWithFloat:offset] } views:@{ @"view": self }];
    [parentView addConstraints:constraints];
    return [constraints firstObject];
}

- (void)addConstraintsToParentView:(UIView *)parentView forVerticalOffset:(CGFloat)verticalOffset toView:(UIView *)otherView
{
    [parentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[view]-verticalOffset-[otherView]" options:0 metrics:@{ @"verticalOffset": [NSNumber numberWithFloat:verticalOffset] } views:@{ @"view": self,  @"otherView": otherView }]];
}

- (NSLayoutConstraint *)addConstraintsToParentView:(UIView *)parentView forHorizontalOffset:(CGFloat)horizontalOffset toView:(UIView *)otherView
{
    NSLayoutConstraint *constraint =[[NSLayoutConstraint constraintsWithVisualFormat:@"H:[view]-horizontalOffset-[otherView]" options:0 metrics:@{ @"horizontalOffset": [NSNumber numberWithFloat:horizontalOffset] } views:@{ @"view": self,  @"otherView": otherView }] firstObject];
    [parentView addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint *)addConstraintsToHorizontallyAlignCenterInParent:(UIView *)parentView toView:(UIView *)otherView
{
    NSLayoutConstraint *centerXConstraint = [NSLayoutConstraint constraintWithItem:self
                                                                         attribute:NSLayoutAttributeCenterX
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:otherView
                                                                         attribute:NSLayoutAttributeCenterX
                                                                        multiplier:1.f constant:0.f];
    [parentView addConstraint:centerXConstraint];
    return centerXConstraint;
}

- (NSLayoutConstraint *)addConstraintsToHorizontallyAlignCenterInParent:(UIView *)parentView toView:(UIView *)otherView offset:(CGFloat)offset
{
    NSLayoutConstraint *centerXConstraint = [NSLayoutConstraint constraintWithItem:self
                                                                         attribute:NSLayoutAttributeCenterX
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:otherView
                                                                         attribute:NSLayoutAttributeCenterX
                                                                        multiplier:1.f constant:offset];
    [parentView addConstraint:centerXConstraint];
    return centerXConstraint;
}

- (NSLayoutConstraint *)addConstraintsToVerticallyAlignCenterInParent:(UIView *)parentView toView:(UIView *)otherView forOffset:(CGFloat)offset
{
    NSLayoutConstraint *centerYConstraint = [NSLayoutConstraint constraintWithItem:self
                                                                         attribute:NSLayoutAttributeCenterY
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:otherView
                                                                         attribute:NSLayoutAttributeCenterY
                                                                        multiplier:1.f constant:offset];
    [parentView addConstraint:centerYConstraint];
    return centerYConstraint;
}

- (void)addConstraintsForEqualsHeightsInParent:(UIView *)parentView toView:(UIView *)otherView
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:otherView
                                 attribute:NSLayoutAttributeHeight
                                multiplier:1
                                  constant:0];
    [parentView addConstraint:constraint];
}

- (void)addConstraintsForEqualsWidthsInParent:(UIView *)parentView toView:(UIView *)otherView
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self
                                                                  attribute:NSLayoutAttributeWidth
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:otherView
                                                                  attribute:NSLayoutAttributeWidth
                                                                 multiplier:1
                                                                   constant:0];
    [parentView addConstraint:constraint];
}

- (void)addConstraintsToAlignLeadingInParentView:(UIView *)parentView toView:(UIView *)otherView
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:otherView attribute:NSLayoutAttributeLeading multiplier:1 constant:0];
    [parentView addConstraint:constraint];
}

- (void)addConstraintsToAlignTrailingInParentView:(UIView *)parentView toView:(UIView *)otherView
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:otherView attribute:NSLayoutAttributeTrailing multiplier:1 constant:0];
    [parentView addConstraint:constraint];
}


#pragma mark -
#pragma mark - Aspect ratio

- (void)addConstraintsForAspectRatio:(CGFloat)aspectRatio
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self
                                                                attribute:NSLayoutAttributeWidth
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self
                                                                  attribute:NSLayoutAttributeHeight
                                                                 multiplier:aspectRatio
                                                                   constant:0.0f];
    [self addConstraint:constraint];
}

- (void)addConstraintsForWidthAspectRatio:(CGFloat)aspectRatio inParent:(UIView *)parentView toView:(UIView *)otherView
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self
                                                                      attribute:NSLayoutAttributeWidth
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:otherView
                                                                      attribute:NSLayoutAttributeWidth
                                                                     multiplier:aspectRatio
                                                                       constant:0.0f];
   [parentView addConstraint:constraint];
}

@end
