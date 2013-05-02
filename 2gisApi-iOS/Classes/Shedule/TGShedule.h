//
//  TGShedule.h
//  2gisApi-iOS
//
//  Created by Кирилл Кунст on 01.04.13.
//  Copyright (c) 2013 YESWECODE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TGDayOfWeek.h"

// Расписание работы компании
@interface TGShedule : NSObject


@property (nonatomic,retain) TGMon *mon;
@property (nonatomic,retain) TGTue *tue;
@property (nonatomic,retain) TGWed *wed;
@property (nonatomic,retain) TGThu *thu;
@property (nonatomic,retain) TGFri *fri;
@property (nonatomic,retain) TGSat *sat;
@property (nonatomic,retain) TGSun *sun;

// Установка дня недели по названию
-(void)setDayOfWeek:(TGDayOfWeek *)dayOfWeek forDayName:(NSString *)dayName;

// День недели по номеру в неделе
-(TGDayOfWeek *)dayWithNumber:(int)number;

@end
