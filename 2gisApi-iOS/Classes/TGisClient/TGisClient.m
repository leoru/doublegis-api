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


-(void)firmsWithParams:(TGRequestParams *)params success:(TGHTTPClientSuccessWithArray)success failure:(TGHTTPClientFailure)failure {
    NSString *urlString = [NSString stringWithFormat:@"/search"];
    urlString = [urlString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];

    [self getPath:urlString parameters:[params toDictionary]  success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSDictionary *response = (NSDictionary *)responseObject;
        NSString *responseCode = response[@"response_code"];
        if ([responseCode isEqualToString:@"200"]) {
            NSDictionary *result = response[@"result"];
            
            NSArray *firms = [NSArray array];
            for (NSDictionary *resultDict in result) {
                TGFirm *firm = [TGFirm objectFromJSONDictionary:resultDict];
                firms = [firms arrayByAddingObject:firm];
            }
            
            success(firms);
        } else {
            failure(nil);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}

-(void)firmWithParams:(TGRequestParams *)params success:(void (^)(TGFirm *))success failure:(TGHTTPClientFailure)failure {
    NSString *urlString = [NSString stringWithFormat:@"/profile"];
    urlString = [urlString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    [self getPath:urlString parameters:[params toDictionary]  success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSDictionary *response = (NSDictionary *)responseObject;
        NSString *responseCode = response[@"response_code"];
        if ([responseCode isEqualToString:@"200"]) {
            TGFirm *firm = [TGFirm objectFromJSONDictionary:response];
            success(firm);
        } else {
            
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
    }];
}

@end
