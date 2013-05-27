//
//  TGFirm.h
//  2gisApi-iOS
//
//  Created by Кирилл Кунст on 01.04.13.
//  Copyright (c) 2013 crtweb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TGFromJSONProtocol.h"
#import "TGShedule.h"
#import "TGFirmRubrics.h"

@interface TGFirm : NSObject <TGFromJSONProtocol>

@property (nonatomic) NSString *id;
@property (nonatomic) float lat;
@property (nonatomic) float lng;
@property (nonatomic,retain) NSString *name;
@property (nonatomic,retain) NSString *city_name;
@property (nonatomic,retain) NSString *address;
@property (nonatomic,retain) NSArray *contacts;
@property (nonatomic,retain) TGFirmRubrics *rubrics;
@property (nonatomic,retain) TGShedule *shedule;

@end


typedef enum {
    TGFirmContactTypePhone,
    TGFirmContactTypeEmail,
    TGFirmContactTypeSite,
    TGFirmContactTypeFax,
    TGFirmContactTypeICQ,
    TGFirmContactTypeSkype,
    TGFirmContactTypeJabber
} TGFirmContactType;

@interface TGFirmContact : NSObject

@property (nonatomic) TGFirmContactType type;
@property (nonatomic,retain) NSString *value;
@property (nonatomic,retain) NSString *alias;

+(TGFirmContactType)typeFromString:(NSString *)string;

@end
