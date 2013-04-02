//
//  TGDetailViewController.h
//  2gisApi-iOS
//
//  Created by Кирилл Кунст on 02.04.13.
//  Copyright (c) 2013 crtweb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TGDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblAddress;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicator;
@property (nonatomic,retain) NSString *firmID;
@end
