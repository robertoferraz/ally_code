//
//  RFRoutesDataSource.h
//  TransitSample
//
//  Created by Roberto Ferraz on 17/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RFRoute;

@interface RFRoutesDataSource : NSObject

- (instancetype)initWithRoutes:(NSArray *)routes;

- (NSUInteger)numberOfRowsInSection:(NSUInteger)section;
- (RFRoute *)routeForIndexPath:(NSIndexPath *)indexPath;

@end
