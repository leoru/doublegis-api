//
//  TGFirm.m
//  2gisApi-iOS
//
//  Created by Кирилл Кунст on 01.04.13.
//  Copyright (c) 2013 crtweb. All rights reserved.
//

#import "TGFirm.h"

@implementation TGFirm

+(id)objectFromJSONDictionary:(NSDictionary *)dict {
    TGFirm *firm = [[TGFirm alloc] init];
    firm.id = (NSString *)dict[@"id"];
    firm.lng = ((NSString *)dict[@"lon"]).floatValue;
    firm.lat = ((NSString *)dict[@"lat"]).floatValue;
    firm.name = ((NSString *)dict[@"name"]);
    firm.city_name = ((NSString *)dict[@"city_name"]);
    firm.address = ((NSString *)dict[@"address"]);
    
    return firm;
}
@end
