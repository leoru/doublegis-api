//
//  TGGeoObjectCity.h
//  2gisApi-iOS
//
//  Created by Danyar Salahutdinov on 26.03.13.
//  Copyright (c) 2013 crtweb. All rights reserved.
//

#import "TGGeoObject.h"

//Города и населенные пункты
@interface TGGeoObjectSettlement : TGGeoObject

@property (nonatomic,retain) NSString *abbreviation;
@property (nonatomic,retain) NSString *settlementType;

@end
