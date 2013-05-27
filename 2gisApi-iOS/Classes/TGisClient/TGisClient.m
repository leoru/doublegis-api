//
//  TGisClient.m
//  2gisApi-iOS
//
//  Created by Danyar Salahutdinov on 26.03.13.
//  Copyright (c) 2013 crtweb. All rights reserved.
//

#import "TGisClient.h"

static TGisClient *_sharedClient;

@implementation TGisClient

+(id)sharedClient{
    if (!_sharedClient){
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken,^{
            _sharedClient = [[self alloc] init];
        });
    }
    return _sharedClient;
}


-(id)init {
    self = [self initWithBaseURL:[TGConfiguration catalogUrl]];
    if (self) {
        [self registerHTTPOperationClass:[AFJSONRequestOperation class]];
		[self setDefaultHeader:@"Accept" value:@"application/json"];
    }
    return self;
}

-(id)initWithBaseURL:(NSURL *)url {
    self = [super initWithBaseURL:url];
    if (!self) {
        return nil;
    }
    return self;
}

-(void)cancelAllOperations{
    NSOperationQueue *queue = [self operationQueue];
    if ([queue operationCount] > 0)
        [queue cancelAllOperations];
}

-(void)firmsWithParams:(TGRequestParams *)params success:(TGHTTPClientSuccessWithArray)success failure:(TGHTTPClientFailure)failure {
    NSString *urlString = [NSString stringWithFormat:@"/search"];
    NSURLRequest *request = [self requestWithMethod:@"GET" path:urlString parameters:[params toDictionary]];
    NSLog(request.description);
    AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
        NSDictionary *responseDict = (NSDictionary *)JSON;
        NSString *responseCode = responseDict[@"response_code"];
        if ([responseCode isEqualToString:@"200"]) {
            NSDictionary *result = responseDict[@"result"];
            
            NSArray *firms = [NSArray array];
            for (NSDictionary *resultDict in result) {
                TGFirm *firm = [TGFirm objectFromJSONDictionary:resultDict];
                firms = [firms arrayByAddingObject:firm];
            }
            
            success(firms);
        } else {
            NSString *error = responseDict[@"error_message"];
            NSLog(error);
            failure(nil);
        }
    } failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON) {
        failure(error);
    }];
    [self enqueueHTTPRequestOperation:operation];
}

-(void)firmWithParams:(TGRequestParams *)params success:(void (^)(TGFirm *))success failure:(TGHTTPClientFailure)failure {
    NSString *urlString = [NSString stringWithFormat:@"/profile"];
    NSURLRequest *request = [self requestWithMethod:@"GET" path:urlString parameters:[params toDictionary]];
    NSLog(request.description);
    AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
        NSDictionary *responseDict = (NSDictionary *)JSON;
        NSString *responseCode = responseDict[@"response_code"];
        if ([responseCode isEqualToString:@"200"]) {
            TGFirm *firm = [TGFirm objectFromJSONDictionary:responseDict];
            success(firm);
        } else {
            
        }
    } failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON) {
        
    }];
    [self enqueueHTTPRequestOperation:operation];
}

@end
