//
//  TGGeoObjectStation.h
//  2gisApi-iOS
//
//  Created by Danyar Salahutdinov on 26.03.13.
//  Copyright (c) 2013 crtweb. All rights reserved.
//

#import "TGGeoObject.h"

typedef enum {
    TGGeoObjectStationTypeLand,
    TGGeoObjectStationTypeMetro,
    TGGeoObjectStationTypeRailway
}TGGeoObjectStationType;

@interface TGGeoObjectStation : TGGeoObject

@property (nonatomic) TGGeoObjectStationType *stationType;

@end
