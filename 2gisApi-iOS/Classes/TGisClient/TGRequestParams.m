//
//  TGisRequestParams.m
//  2gisApi-iOS
//
//  Created by Кирилл Кунст on 28.03.13.
//  Copyright (c) 2013 YESWECODE. All rights reserved.
//

#import "TGRequestParams.h"
#import "TGConfiguration.h"

#define kApiKey @"key"
#define kApiVersion @"version"

@implementation TGRequestParams

-(id)init {
    self = [super init];
    if (self) {
        _params = [NSMutableDictionary dictionary];
        [_params setObject:[TGConfiguration apiKey] forKey:kApiKey];
        [_params setObject:[TGConfiguration version] forKey:kApiVersion];
    }
    return self;
}

-(id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self) {
        [_params setDictionary:dictionary];
    }
    return self;
}

+(id)params {
    return [[TGRequestParams alloc] init];
}

+(id)paramsWithDictionary:(NSDictionary *)dict {
    return [[TGRequestParams alloc] initWithDictionary:dict];
}

-(void)addParam:(NSString *)param value:(NSString *)value {
    [_params setObject:value forKey:param];
}

-(NSDictionary *)toDictionary {
    return _params;
}

@end
