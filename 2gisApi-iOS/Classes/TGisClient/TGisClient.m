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

+(TGisClient *)sharedClient{
    if (!_sharedClient){
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken,^{
            _sharedClient = [[self alloc] init];
        });
    }
    return _sharedClient;
}

+(TGisClient *)createClient{
    NSURL *url = [NSURL URLWithString:[[[TGisClient sharedClient] configuraion] catalogUrl]];
    TGisClient *client = [[TGisClient alloc] initWithBaseURL:url];
    return client;
}

-(TGisClient *)initWithBaseURL:(NSURL *)url{
    self = [super initWithBaseURL:url];
    if (!self){
        return nil;
    }
    return self;
}

@end
