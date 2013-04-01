//
//  AMLocationDetector.h
//  am.ru
//
//  Created by Кирилл Кунст on 13.03.13.
//
//
#import "TGAppDelegate.h"
#import <Foundation/Foundation.h>
#import "TGDetectCity.h"
#import <CoreLocation/CoreLocation.h>

@interface TGLocationDetector : NSObject

+(void)detectUserLocationWithSuccess:(void(^)(NSString *cityName))success failure:(void(^)(void))failure;

@end
