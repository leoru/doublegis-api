//
//  TGDaysOfWeek.h
//  2gisApi-iOS
//
//  Created by Кирилл Кунст on 01.04.13.
//  Copyright (c) 2013 YESWECODE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <TGFromJSONProtocol.h>


// Рабочие часы
@interface TGWorkingHours : NSObject

// Начало
@property (nonatomic,retain) NSString *from;

// Конец
@property (nonatomic,retain) NSString *to;

@end


// День недели
@interface TGDayOfWeek : NSObject

// Рабочие часы до обеда
@property (nonatomic,retain) TGWorkingHours *workingHours0;

// Рабочие часы после обеда
@property (nonatomic,retain) TGWorkingHours *workingHours1;

// Получение из словаря
-(void)fromDictionary:(NSDictionary *)dict;

@end

// Понедельник
@interface TGMon : TGDayOfWeek
@end

// Вторник
@interface TGTue : TGDayOfWeek
@end

// Среда
@interface TGWed : TGDayOfWeek
@end

// Четверг
@interface TGThu : TGDayOfWeek
@end

// Пятница
@interface TGFri : TGDayOfWeek
@end

// Суббота
@interface TGSat : TGDayOfWeek
@end

// Воскресенье
@interface TGSun : TGDayOfWeek
@end

// Фабрика для получения дня недели по названию
@interface TGDayOfWeekFactory : NSObject 

// День недели по названию
+(id)createDayOfWeek:(NSString *)name;

@end
