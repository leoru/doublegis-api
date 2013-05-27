//
//  TGFirmRubrics.m
//  lawyer-ios
//
//  Created by Salahutdinov Danyar on 07.05.13.
//  Copyright (c) 2013 crtweb. All rights reserved.
//

#import "TGFirmRubrics.h"

@implementation TGFirmRubrics

-(id)init{
    self = [super init];
    if (self){
        self.rubrics = [NSArray array];
    }
    return self;
}

-(id)initWithArray:(NSArray *)array{
    self = [self init];
    if (self){
        self.rubrics = array;
    }
    return self;
}

-(NSString *)rubricsDescription{
    NSMutableString *result = [NSMutableString string];
    for (NSString *rubrics in self.rubrics){
        [result appendFormat:@" ,%@",rubrics];
    }
    NSRange range = NSMakeRange(0, 2);
    [result replaceCharactersInRange:range withString:@""];
    return result;
}

@end
