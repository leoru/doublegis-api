//
//  AMLocationDetector.h
//  am.ru
//
//  Created by Кирилл Кунст on 13.03.13.
//
//
#import <Foundation/Foundation.h>
#import "TGDetectCity.h"
#import <CoreLocation/CoreLocation.h>

@interface TGLocationDetector : NSObject

+(NSString *)cityWithLocation:(CGPoint)point;

@end
