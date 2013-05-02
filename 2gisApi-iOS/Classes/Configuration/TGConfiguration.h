//
//  TGConfiguration.h
//  2gisApi-iOS
//
//  Created by Danyar Salahutdinov on 26.03.13.
//  Copyright (c) 2013 YESWECODE. All rights reserved.
//

#import <Foundation/Foundation.h>

// Строка сервера API
#define kAPI_STRING @"http://catalog.api.2gis.ru/"

// Тип выдачи
typedef enum{
    TGResponseFromatFull,
    TGResponseFromatShort
} TGResponseFromat;


// Конфигурация API
@interface TGConfiguration : NSObject

// Ключ API
+(NSString *)apiKey;

// Версия API
+(NSString *)version;

// URL каталога
+(NSURL *)catalogUrl;

// Формат выдачи
+(TGResponseFromat)responseFormat;

// Лимит
+(int)limit;


@end
