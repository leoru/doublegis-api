//
//  TGError.h
//  2gisApi-iOS
//
//  Created by Кирилл Кунст on 28.03.13.
//  Copyright (c) 2013 YESWECODE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TGError : NSObject

@property (nonatomic,retain) NSString *errorCode;
@property (nonatomic,retain) NSString *errorMessage;

+(NSString *)messageForErrorCode:(NSString *)errorCode;

@end
