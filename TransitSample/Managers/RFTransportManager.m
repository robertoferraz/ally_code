//
//  RFTransportManager.m
//  TransitSample
//
//  Created by Roberto Ferraz on 13/12/15.
//  Copyright © 2015 Roberto Ferraz. All rights reserved.
//

#import "RFTransportManager.h"
#import "RFTransport.h"

static NSString *const TRANSPORT_URL = @"TheUrlForTheRequest";

@implementation RFTransportManager

+ (void)requestTransportWithOriginCoordinate:(CLLocationCoordinate2D)originCoordinate destinationCoordinate:(CLLocationCoordinate2D)destinationCoordinate completionBlock:(RFTransportManagerCompletionBlock)completion
{
    // Here the request would be made to the server and the model returned in the block
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"json"];
    NSString *jsonString = [[NSString alloc] initWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:NULL];

    NSMutableDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:[jsonString dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingMutableContainers error:nil];

    NSError *error;
    RFTransport *transport = [MTLJSONAdapter modelOfClass:[RFTransport class] fromJSONDictionary:jsonDict error:&error];

    completion(transport, error);    
}

@end
