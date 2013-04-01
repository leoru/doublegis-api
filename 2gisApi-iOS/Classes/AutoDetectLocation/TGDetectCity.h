//
//  AMDetectCity.h
//  am.ru
//
//  Created by Кирилл Кунст on 13.03.13.
//
//

#import <Foundation/Foundation.h>

@interface TGDetectCity : NSObject

@property (nonatomic,retain) NSString *name;
@property (nonatomic) CGPoint point;
@property (nonatomic) float distanceToUser;

@end
