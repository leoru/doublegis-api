//
//  TGisClient.h
//  2gisApi-iOS
//
//  Created by Danyar Salahutdinov on 26.03.13.
//  Copyright (c) 2013 YESWECODE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFHTTPClient.h"
#import "AFJSONRequestOperation.h"
#import "TGConfiguration.h"
#import "TGRequestParams.h"
#import "TGFirm.h"

// Клиент для запросов к API
@interface TGisClient : AFHTTPClient

// Блок успешного выполнения запроса 
typedef void (^TGHTTPClientSuccess)(void);

// Блок успешного выполнения запроса с результатом в виде массива
typedef void (^TGHTTPClientSuccessWithArray)(NSArray *objects);

// Блок выполнения запроса с ошибкой
typedef void (^TGHTTPClientFailure)(NSError *commonError);


@property (nonatomic,retain) TGConfiguration *configuraion;

+(id)sharedClient;

// Получение списка фирм по параметрам
-(void)firmsWithParams:(TGRequestParams *)params success:(TGHTTPClientSuccessWithArray)success failure:(TGHTTPClientFailure)failure;

// Получение данных по фирме
-(void)firmWithParams:(TGRequestParams *)params success:(void(^)(TGFirm *))success failure:(TGHTTPClientFailure)failure;

@end
