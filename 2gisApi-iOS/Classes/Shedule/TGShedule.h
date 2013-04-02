//
//  TGShedule.h
//  2gisApi-iOS
//
//  Created by Кирилл Кунст on 01.04.13.
//  Copyright (c) 2013 crtweb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TGDayOfWeek.h"

@interface TGShedule : NSObject

@property (nonatomic,retain) TGMon *mon;
@property (nonatomic,retain) TGTue *tue;
@property (nonatomic,retain) TGWed *wed;
@property (nonatomic,retain) TGThu *thu;
@property (nonatomic,retain) TGFri *fri;
@property (nonatomic,retain) TGSat *sat;
@property (nonatomic,retain) TGSun *sun;

-(void)setDayOfWeek:(TGDayOfWeek *)dayOfWeek forDayName:(NSString *)dayName;

@end
