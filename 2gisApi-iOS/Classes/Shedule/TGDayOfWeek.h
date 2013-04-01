//
//  TGDaysOfWeek.h
//  2gisApi-iOS
//
//  Created by Кирилл Кунст on 01.04.13.
//  Copyright (c) 2013 crtweb. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface TDWorkingHours : NSObject

@property (nonatomic,retain) NSString *from;
@property (nonatomic,retain) NSString *to;

@end


@interface TGDayOfWeek : NSObject

@property (nonatomic,retain) TDWorkingHours *workingHours0;
@property (nonatomic,retain) TDWorkingHours *workingHours1;

@end

@interface TGMon : TGDayOfWeek
@end

@interface TGTue : TGDayOfWeek
@end

@interface TGWed : TGDayOfWeek
@end

@interface TGThu : TGDayOfWeek
@end

@interface TGFri : TGDayOfWeek
@end

@interface TGSat : TGDayOfWeek
@end

@interface TGSun : TGDayOfWeek
@end
