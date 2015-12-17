//
//  RFRoutesDataSource.m
//  TransitSample
//
//  Created by Roberto Ferraz on 17/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import "RFRoutesDataSource.h"

@interface RFRoutesDataSource ()

@property (nonatomic, strong) NSArray *routes;

@end

@implementation RFRoutesDataSource

- (instancetype)initWithRoutes:(NSArray *)routes
{
    self = [super init];
    if (self)
    {
        [self setRoutes:routes];
    }
    return self;
}

- (NSUInteger)numberOfRowsInSection:(NSUInteger)section
{
    return [self.routes count];
}

- (RFRoute *)routeForIndexPath:(NSIndexPath *)indexPath
{
    return self.routes[indexPath.row];
}

@end
