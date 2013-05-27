//
//  TGFirmRubrics.h
//  lawyer-ios
//
//  Created by Calahutdinov Danyar on 07.05.13.
//  Copyright (c) 2013 crtweb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TGFirmRubrics : NSObject

@property (nonatomic, retain) NSArray *rubrics;

-(NSString *)rubricsDescription;
-(id)initWithArray:(NSArray *)array;

@end
