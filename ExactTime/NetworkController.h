//
//  NetworkController.h
//  ExactTime
//
//  Created by Dalton on 5/9/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

static NSString * const baseURL = @"http://time.jsontest.com";


@interface NetworkController : NSObject


@property (nonatomic, strong) AFHTTPSessionManager *sessionManager;

-(void)getExactTimeInfo:(void (^)(NSDictionary *exactTimeInfo, NSError *error))completion;


@end
