//
//  TGFirm.h
//  2gisApi-iOS
//
//  Created by Кирилл Кунст on 01.04.13.
//  Copyright (c) 2013 YESWECODE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TGFromJSONProtocol.h"
#import "TGShedule.h"

// Компания в каталоге 2gis
@interface TGFirm : NSObject <TGFromJSONProtocol>

// ID
@property (nonatomic) NSString *id;

// Широта
@property (nonatomic) float lat;

// Долгота
@property (nonatomic) float lng;

// Название
@property (nonatomic,retain) NSString *name;

// Город
@property (nonatomic,retain) NSString *city_name;

// Адрес
@property (nonatomic,retain) NSString *address;

// Контакты
@property (nonatomic,retain) NSArray *contacts;

// Расписание работы
@property (nonatomic,retain) TGShedule *shedule;

@end

// Тип контактов
typedef enum {
    TGFirmContactTypePhone,
    TGFirmContactTypeEmail,
    TGFirmContactTypeSite,
    TGFirmContactTypeFax,
    TGFirmContactTypeICQ,
    TGFirmContactTypeSkype,
    TGFirmContactTypeJabber
} TGFirmContactType;


// Контакт
@interface TGFirmContact : NSObject

// Тип
@property (nonatomic) TGFirmContactType type;

// Значение
@property (nonatomic,retain) NSString *value;

// Алиас
@property (nonatomic,retain) NSString *alias;


// Контакт из строки
+(TGFirmContactType)typeFromString:(NSString *)string;

@end
