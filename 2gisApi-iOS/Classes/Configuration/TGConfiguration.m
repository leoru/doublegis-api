//
//  TGConfiguration.m
//  2gisApi-iOS
//
//  Created by Danyar Salahutdinov on 26.03.13.
//  Copyright (c) 2013 crtweb. All rights reserved.
//

#import "TGConfiguration.h"

@implementation TGConfiguration

+(NSString *)apiKey{
    return @"rusqmy7744";
}

+(NSString *)version{
    return @"1.3";
}

+(NSString *)catalogUrl{
    return @"http://catalog.api.2gis.ru/geo/search";
}

+(TGResponseFromat)responseFormat{
    return TGResponseFromatFull;
}

+(int)limit{
    return 1;
}

@end
