//
//  ETViewController.m
//  ExactTime
//
//  Created by Joshua Howland on 6/16/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "ETViewController.h"
#import "AFNetworking.h"
#import "NetworkController.h"

@interface ETViewController ()

@end

@implementation ETViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"http://www.timeapi.org/utc/now"]];
//    
//    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
//    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
//        NSString *result = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
//        NSLog(@"Response Object: %@ result %@", responseObject, result);
//    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//        NSLog(@"Error: %@", error);
//    }];
//    
//    [operation start];
 
    
    NetworkController *networkController = [NetworkController new];
    
    [networkController getExactTimeInfo:^(NSDictionary *exactTimeInfo, NSError *error) {
        if (!error) {
            NSLog(@"Exact time info: %@, Time: %@", exactTimeInfo, exactTimeInfo[@"Time"]);
        } else {
            
            NSLog(@"Error: %@", error.userInfo[NSLocalizedDescriptionKey]);
        }
    }];
    
}



@end
