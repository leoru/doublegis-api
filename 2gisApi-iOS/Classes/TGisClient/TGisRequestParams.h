//
//  TGisRequestParams.h
//  2gisApi-iOS
//
//  Created by Кирилл Кунст on 28.03.13.
//  Copyright (c) 2013 crtweb. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kWhat @"what"
#define kWhere @"where"
#define kPoint @"point"
#define kRadius @"radius"
#define kPage @"page"
#define kPagesize @"pagesize"
#define kOutput @"output"
#define kSort @"sort"

//sorting
#define kSortRelevance @"relevance"
#define kSortRating @"rating"
#define kSortName @"name"
#define kSortDistance @"distance"



@interface TGisRequestParams : NSObject
{
    NSMutableDictionary *_params;
}

+(id)paramsWithDictionary:(NSDictionary *)dict;
+(id)params;

-(void)addParam:(NSString *)param value:(NSString *)value;

               
@end
