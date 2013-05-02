//
//  TGisRequestParams.h
//  2gisApi-iOS
//
//  Created by Кирилл Кунст on 28.03.13.
//  Copyright (c) 2013 YESWECODE. All rights reserved.
//

#import <Foundation/Foundation.h>

// Список стандартных параметров для запроса
#define kID @"id"
#define kWhat @"what"
#define kWhere @"where"
#define kPoint @"point"
#define kRadius @"radius"
#define kPage @"page"
#define kPagesize @"pagesize"
#define kOutput @"output"
#define kSort @"sort"

//Сортировка
#define kSortRelevance @"relevance"
#define kSortRating @"rating"
#define kSortName @"name"
#define kSortDistance @"distance"



@interface TGRequestParams : NSObject
{
    NSMutableDictionary *_params;
}

+(id)paramsWithDictionary:(NSDictionary *)dict;

+(id)params;

-(void)addParam:(NSString *)param value:(NSString *)value;

-(NSDictionary *)toDictionary;

@end
