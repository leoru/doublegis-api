//
//  AMLocationDetector.m
//  am.ru
//
//  Created by Кирилл Кунст on 13.03.13.
//
//

#import "TGLocationDetector.h"
#import "TGAppDelegate.h"
#import <math.h>


@implementation TGLocationDetector

+(NSString *)cityWithLocation:(CGPoint)point {
    NSArray *cities = [self citiesList];
    CGPoint locationPoint = point;
    
    for (int i = 0; i < cities.count; i++) {
        TGDetectCity *city = cities[i];
        city.distanceToUser = [self distanceBetweenPoint1:city.point andPoint2:locationPoint];
    }
    
    TGDetectCity *minCity = [self nearestCityInArray:cities];
    
    return minCity.name;
}

+(NSArray *)citiesList {
    NSArray *citiesList = [NSArray array];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"cities" ofType:@"plist"];
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    NSArray *cities = [dict objectForKey:@"cities"];
    for(NSDictionary *cityDict in cities) {
        TGDetectCity *city = [[TGDetectCity alloc] init];
        city.name = cityDict[@"name"];
        city.point = CGPointMake(((NSString *)cityDict[@"lat"]).floatValue, ((NSString *)cityDict[@"lng"]).floatValue);
        citiesList = [citiesList arrayByAddingObject:city];
    }
    return citiesList;
}

+(float)distanceBetweenPoint1:(CGPoint)point1 andPoint2:(CGPoint)point2 {
    double distance = sqrt(pow(point2.x - point1.x,2) + pow(point2.y - point1.y,2));
    return distance;
}

+(TGDetectCity *)nearestCityInArray:(NSArray *)cities {
    
    TGDetectCity *minCity = cities[0];
    for (int i = 0; i < cities.count; i++) {
        TGDetectCity *city = cities[i];
        
        if (city.distanceToUser < minCity.distanceToUser) {
            minCity = city;
        }
    }
    
    return minCity;
}


@end
