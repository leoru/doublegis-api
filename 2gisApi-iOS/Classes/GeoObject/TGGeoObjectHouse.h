//
//  TGGeoObjectHouse.h
//  2gisApi-iOS
//
//  Created by Danyar Salahutdinov on 26.03.13.
//  Copyright (c) 2013 YESWECODE. All rights reserved.
//

#import "TGGeoObject.h"

@interface TGGeoObjectHouse : TGGeoObject

@property (nonatomic,retain) NSString *city;
@property (nonatomic,retain) NSString *district;
@property (nonatomic,retain) NSString *street;
@property (nonatomic,retain) NSString *street2;
@property (nonatomic,retain) NSNumber *number;
@property (nonatomic,retain) NSNumber *number2;
@property (nonatomic,retain) NSString *buildingName;
@property (nonatomic,retain) NSString *purpose;
@property (nonatomic,retain) NSNumber *elevation;
@property (nonatomic,retain) NSNumber *firmCount;
@property (nonatomic,retain) NSArray *firmCountByRubrics;
@property (nonatomic,retain) NSString *postIndex;


@end
