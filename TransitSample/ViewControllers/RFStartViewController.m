//
//  RFStartViewController.m
//  TransitSample
//
//  Created by Roberto Ferraz on 13/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import "RFStartViewController.h"
#import "RFMapDetailViewController.h"
#import "RFRoutesDataSource.h"
#import "RFTrip+Routes.h"
#import "RFTripHandler.h"
#import "RFTransport.h"
#import "RFRouteCell.h"

@interface RFStartViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) RFRoutesDataSource *routeDataSource;
@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end

NSString * const CELL_IDENTIFIER = @"RouteCell";

@implementation RFStartViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    __weak RFStartViewController *weakSelf = self;
    
    [[RFTripHandler sharedInstance].trip requestRouteWithSuccess:^(RFTransport *transport) {
       
        RFStartViewController *strongSelf = weakSelf;
        [strongSelf setRouteDataSource:[[RFRoutesDataSource alloc] initWithRoutes:transport.routes]];
        [strongSelf.tableView reloadData];
        
    } failure:^(NSError *error) {
        
    }];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    RFMapDetailViewController *mapDetailViewController = (RFMapDetailViewController *)[segue destinationViewController];
    
    [mapDetailViewController setRoute:sender];
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.routeDataSource numberOfRowsInSection:section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    RFRouteCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_IDENTIFIER forIndexPath:indexPath];
    [cell setRoute:[self.routeDataSource routeForIndexPath:indexPath]];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    RFRouteCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_IDENTIFIER];
    return [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"routeDetailSegue" sender:[self.routeDataSource routeForIndexPath:indexPath]];
}

@end
