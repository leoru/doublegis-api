//
//  TGFromJSONProtocol.h
//  2gisApi-iOS
//
//  Created by Кирилл Кунст on 01.04.13.
//  Copyright (c) 2013 YESWECODE. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TGFromJSONProtocol <NSObject>

+(id)objectFromJSONDictionary:(NSDictionary *)dict;

@end
