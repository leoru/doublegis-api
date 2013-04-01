//
//  TGConfiguration.h
//  2gisApi-iOS
//
//  Created by Danyar Salahutdinov on 26.03.13.
//  Copyright (c) 2013 crtweb. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kAPI_STRING @"http://catalog.api.2gis.ru/"

typedef enum{
    TGResponseFromatFull,
    TGResponseFromatShort
} TGResponseFromat;

@interface TGConfiguration : NSObject

+(NSString *)apiKey;
+(NSString *)version;
+(NSURL *)catalogUrl;
+(TGResponseFromat)responseFormat;
+(int)limit;


@end
