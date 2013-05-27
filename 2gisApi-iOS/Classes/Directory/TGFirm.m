//
//  TGFirm.m
//  2gisApi-iOS
//
//  Created by Кирилл Кунст on 01.04.13.
//  Copyright (c) 2013 crtweb. All rights reserved.
//

#import "TGFirm.h"
#import "TGDayOfWeek.h"
#import "TGShedule.h"

@implementation TGFirm

+(id)objectFromJSONDictionary:(NSDictionary *)dict {
    NSLog(dict.description);
    TGFirm *firm = [[TGFirm alloc] init];
    firm.id = (NSString *)dict[@"id"];
    firm.lng = ((NSString *)dict[@"lon"]).floatValue;
    firm.lat = ((NSString *)dict[@"lat"]).floatValue;
    firm.name = ((NSString *)dict[@"name"]);
    firm.city_name = ((NSString *)dict[@"city_name"]);
    firm.address = ((NSString *)dict[@"address"]);
    if (dict[@"additional_info"]){
        NSDictionary *additionalInfo = (NSDictionary *)dict[@"additional_info"];
        if (additionalInfo[@"office"]){
            NSString *office = additionalInfo[@"office"];
            firm.address = [NSString stringWithFormat:@"%@, %@",firm.address,office];
        }
    }
    if (dict[@"schedule"]) {
        NSDictionary *sheduleDict = dict[@"schedule"];
        TGShedule *shedule = [[TGShedule alloc] init];
        [sheduleDict enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
            NSString *k = (NSString *)key;
            NSDictionary *dayDict = (NSDictionary *)obj;
            
            TGDayOfWeek *dayOfWeek = [TGDayOfWeekFactory createDayOfWeek:k];
            [dayOfWeek fromDictionary:dayDict];
            [shedule setDayOfWeek:dayOfWeek forDayName:k];
        }];
        
        firm.shedule = shedule;
    }
    
    if (dict[@"rubrics"]){
        NSArray *array = (NSArray *)dict[@"rubrics"];
        firm.rubrics = [[TGFirmRubrics alloc] initWithArray:array];
    }
    
    if (dict[@"contacts"]) {
        NSArray *contacts = [NSArray array];
        
        NSArray *contactsArray = dict[@"contacts"];
        for (NSDictionary *d in contactsArray) {
            NSArray *innerContacts = d[@"contacts"];
            for (NSDictionary *c in innerContacts) {
                TGFirmContact *contact = [[TGFirmContact alloc] init];
                contact.type = [TGFirmContact typeFromString:c[@"type"]];
                contact.value = c[@"value"];
                contacts = [contacts arrayByAddingObject:contact];
            }
        }
        
        firm.contacts = contacts;
    }
    return firm;
}
@end

@implementation TGFirmContact

+(TGFirmContactType)typeFromString:(NSString *)string {
    if ([string isEqualToString:@"phone"]) {
        return TGFirmContactTypePhone;
    } else if ([string isEqualToString:@"website"]) {
        return TGFirmContactTypeSite;
    } else if ([string isEqualToString:@"email"]) {
        return TGFirmContactTypeEmail;
    } else if ([string isEqualToString:@"fax"]) {
        return TGFirmContactTypeFax;
    } else if ([string isEqualToString:@"icq"]) {
        return TGFirmContactTypeICQ;
    } else if ([string isEqualToString:@"skype"]) {
        return TGFirmContactTypeSkype;
    } else if ([string isEqualToString:@"jabber"]) {
        return TGFirmContactTypeJabber;
    }
}

@end
