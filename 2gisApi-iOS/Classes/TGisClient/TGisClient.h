//
//  TGisClient.h
//  2gisApi-iOS
//
//  Created by Danyar Salahutdinov on 26.03.13.
//  Copyright (c) 2013 crtweb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFHTTPClient.h"
#import "AFJSONRequestOperation.h"
#import "TGConfiguration.h"
#import "TGRequestParams.h"
#import "TGFirm.h"

@interface TGisClient : AFHTTPClient

typedef void (^TGHTTPClientSuccess)(void);
typedef void (^TGHTTPClientSuccessWithArray)(NSArray *objects);
typedef void (^TGHTTPClientFailure)(NSError *commonError);


@property (nonatomic,retain) TGConfiguration *configuraion;

+(id)sharedClient;

-(void)firmsWithParams:(TGRequestParams *)params success:(TGHTTPClientSuccessWithArray)success failure:(TGHTTPClientFailure)failure;

-(void)firmWithParams:(TGRequestParams *)params success:(void(^)(TGFirm *))success failure:(TGHTTPClientFailure)failure;

@end
