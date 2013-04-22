//
//  TGDaysOfWeek.m
//  2gisApi-iOS
//
//  Created by Кирилл Кунст on 01.04.13.
//  Copyright (c) 2013 crtweb. All rights reserved.
//

#import "TGDayOfWeek.h"

@implementation TGWorkingHours

@end

@implementation TGDayOfWeek

-(void)fromDictionary:(NSDictionary *)dict {
    
    NSDictionary *workingHours0Dict = dict[@"working_hours-0"];
    TGWorkingHours *workingHours0 = [[TGWorkingHours alloc] init];
    workingHours0.from = workingHours0Dict[@"from"];
    workingHours0.to = workingHours0Dict[@"to"];
    
    NSDictionary *workingHours1Dict = dict[@"working_hours-1"];
    TGWorkingHours *workingHours1 = [[TGWorkingHours alloc] init];
    workingHours1.from = workingHours1Dict[@"from"];
    workingHours1.to = workingHours1Dict[@"to"];
    
    self.workingHours0 = workingHours0;
    self.workingHours1 = workingHours1;
}

@end

@implementation TGMon
@end

@implementation TGTue
@end

@implementation TGWed
@end

@implementation TGThu
@end

@implementation TGFri
@end

@implementation TGSat
@end

@implementation TGSun
@end

@implementation TGDayOfWeekFactory

+(id)createDayOfWeek:(NSString *)name {
    TGDayOfWeek *dayOfWeek;
    
    if ([name isEqualToString:@"Mon"]) {
        dayOfWeek = [[TGMon alloc] init];
    } else if ([name isEqualToString:@"Tue"]) {
        dayOfWeek = [[TGTue alloc] init];
    } else if ([name isEqualToString:@"Wed"]) {
        dayOfWeek = [[TGWed alloc] init];
    } else if ([name isEqualToString:@"Thu"]) {
        dayOfWeek = [[TGThu alloc] init];
    } else if ([name isEqualToString:@"Fri"]) {
        dayOfWeek = [[TGFri alloc] init];
    } else if ([name isEqualToString:@"Sat"]) {
        dayOfWeek = [[TGSat alloc] init];
    } else if ([name isEqualToString:@"Sun"]) {
        dayOfWeek = [[TGSun alloc] init];
    }
    return dayOfWeek;
}


@end