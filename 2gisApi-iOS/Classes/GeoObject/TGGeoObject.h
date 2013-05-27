//
//  TGGeoObject.h
//  2gisApi-iOS
//
//  Created by Danyar Salahutdinov on 26.03.13.
//  Copyright (c) 2013 crtweb. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    TGGeoObjectTypeProject,
    TGGeoObjectTypeDistrict,
    TGGeoObjectTypeHouse,
    TGGeoObjectTypeCity,
    TGGeoObjectTypeSettlement,
    TGGeoObjectTypeStation,
    TGGeoObjectTypeStationPlatform,
    TGGeoObjectTypeStreet,
    TGGeoObjectTypeLivingArea,
    TGGeoObjectTypePlace,
    TGGeoObjectTypeSight,
    TGGeoObjectTypeCrossroad,
    TGGeoObjectTypeMetro
} TGGeoObjectType;

@interface TGGeoObject : NSObject

@property (nonatomic) TGGeoObjectType type;

@property (nonatomic,retain) NSNumber *id;
@property (nonatomic,retain) NSNumber *projectId;
@property (nonatomic,retain) NSString *name;
@property (nonatomic,retain) NSString *shortName;
@property (nonatomic,retain) NSString *selection;
@property (nonatomic,retain) NSString *centroid;


@end
