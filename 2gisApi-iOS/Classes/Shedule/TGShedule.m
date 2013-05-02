//
//  TGShedule.m
//  2gisApi-iOS
//
//  Created by Кирилл Кунст on 01.04.13.
//  Copyright (c) 2013 YESWECODE. All rights reserved.
//

#import "TGShedule.h"

@implementation TGShedule

-(void)setDayOfWeek:(TGDayOfWeek *)dayOfWeek forDayName:(NSString *)dayName{
    if ([dayName isEqualToString:@"Mon"]) {
        self.mon = (TGMon *)dayOfWeek;
    } else if ([dayName isEqualToString:@"Tue"]) {
        self.tue = (TGTue *)dayOfWeek;
    } else if ([dayName isEqualToString:@"Wed"]) {
        self.wed = (TGWed *)dayOfWeek;
    } else if ([dayName isEqualToString:@"Thu"]) {
        self.thu = (TGThu *)dayOfWeek;
    } else if ([dayName isEqualToString:@"Fri"]) {
        self.fri = (TGFri *)dayOfWeek;
    } else if ([dayName isEqualToString:@"Sat"]) {
        self.sat = (TGSat *)dayOfWeek;
    } else if ([dayName isEqualToString:@"Sun"]) {
        self.sun = (TGSun *)dayOfWeek;
    }
}

-(TGDayOfWeek *)dayWithNumber:(int)number{
    switch (number) {
        case 1:
            return self.mon;
            break;
        case 2:
            return self.tue;
            break;
        case 3:
            return self.wed;
            break;
        case 4:
            return self.thu;
            break;
        case 5:
            return self.fri;
            break;
        case 6:
            return self.sat;
            break;
        case 7:
        default:
            return self.sun;
            break;
    }
}

@end
