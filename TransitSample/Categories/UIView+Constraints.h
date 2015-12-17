//
//  UIView+Constraints.h
//  Utils
//
//  Created by Roberto Ferraz on 11/12/13.
//  Copyright Roberto Ferraz. All rights reserved.
//

@import UIKit;

@interface UIView (Constraints)

- (void)addConstraintsToCenterInParent:(UIView *)parentView;
- (void)addConstraintsToFillParentHorizontally:(UIView *)parentView;
- (void)addConstraintsToFillParentHorizontally:(UIView *)parentView withPadding:(CGFloat)padding;
- (void)addConstraintsToFillParentVertically:(UIView *)parentView;
- (void)addConstraintsToFillParentVertically:(UIView *)parentView withOffset:(CGFloat)offset;
- (void)addConstraintsToFillParentVertically:(UIView *)parentView withPadding:(CGFloat)padding;
- (void)addConstraintsToCenterHorizontallyInParent:(UIView *)parentView withWidth:(CGFloat)width;
- (void)addConstraintsToCenterHorizontallyInParent:(UIView *)parentView;
- (void)addConstraintsToCenterVerticallyInParent:(UIView *)parentView;
- (NSLayoutConstraint *)addConstraintsToCenterVerticallyInParent:(UIView *)parentView withOffset:(CGFloat)offset;
- (NSLayoutConstraint *)addConstraintsToVerticallyAlignInParent:(UIView *)parentView withTopOffset:(CGFloat)topOffset andHeight:(CGFloat)height;
- (void)addConstraintsToVerticallyAlignInParent:(UIView *)parent withBottomOffset:(CGFloat)bottomOffset andHeight:(CGFloat)height;
- (void)addConstraintsToVerticallyAlignInParent:(UIView *)parent withTopOffset:(CGFloat)topOffset andBottomOffset:(CGFloat)bottomOffset;
- (void)addConstraintsToHorizontallyAlignInParent:(UIView *)parent withLeftOffset:(CGFloat)leftOffset andRightOffset:(CGFloat)rightOffset;
- (NSArray *)addConstraintsToParentView:(UIView *)parentView forHeight:(CGFloat)height;
- (NSLayoutConstraint *)addConstraintsToParentView:(UIView *)parentView forVerticalOffset:(CGFloat)verticalOffset;
- (void)addConstraintsToAlignRightInParent:(UIView *)parentView withOffset:(CGFloat)offset;
- (void)addConstraintsToAlignLeftInParent:(UIView *)parentView withOffset:(CGFloat)offset;
- (NSArray *)addConstraintsToAlignTopInParent:(UIView *)parentView withOffset:(CGFloat)offset;
- (NSLayoutConstraint *)addConstraintsToAlignBottomInParent:(UIView *)parentView withOffset:(CGFloat)offset;
- (NSLayoutConstraint *)addConstraintsToParentView:(UIView *)parentView forWidth:(CGFloat)width;
- (void)addConstraintsToParentView:(UIView *)parentView forVerticalOffset:(CGFloat)verticalOffset toView:(UIView *)otherView;
- (NSLayoutConstraint *)addConstraintsToParentView:(UIView *)parentView forHorizontalOffset:(CGFloat)horizontalOffset toView:(UIView *)otherView;
- (void)addConstraintsToParentView:(UIView *)parentView forBottomSpace:(CGFloat)space;
- (NSLayoutConstraint *)addConstraintsToHorizontallyAlignCenterInParent:(UIView *)parentView toView:(UIView *)otherView;
- (NSLayoutConstraint *)addConstraintsToHorizontallyAlignCenterInParent:(UIView *)parentView toView:(UIView *)otherView offset:(CGFloat)offset;
- (NSLayoutConstraint *)addConstraintsToVerticallyAlignCenterInParent:(UIView *)parentView toView:(UIView *)otherView forOffset:(CGFloat)offset;
- (void)addConstraintsForEqualsHeightsInParent:(UIView *)parentView toView:(UIView *)otherView;
- (void)addConstraintsForEqualsWidthsInParent:(UIView *)parentView toView:(UIView *)otherView;

- (void)addConstraintsForAspectRatio:(CGFloat)aspectRatio;
- (void)addConstraintsForWidthAspectRatio:(CGFloat)aspectRatio inParent:(UIView *)parentView toView:(UIView *)otherView;
- (void)addConstraintsToAlignTrailingInParentView:(UIView *)parentView toView:(UIView *)otherView;
- (void)addConstraintsToAlignLeadingInParentView:(UIView *)parentView toView:(UIView *)otherView;

@end
