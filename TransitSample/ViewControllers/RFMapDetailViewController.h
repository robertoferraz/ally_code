//
//  RFMapDetailViewController.h
//  TransitSample
//
//  Created by Roberto Ferraz on 15/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RFRoute;

@interface RFMapDetailViewController : UIViewController

@property (nonatomic, weak) RFRoute *route;

@end
