//
//  TGViewController.h
//  2gisApi-iOS
//
//  Created by Developer on 21.03.13.
//  Copyright (c) 2013 crtweb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TGViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>
{
    NSArray *firms;
}
@property (weak, nonatomic) IBOutlet UITextField *whereField;
@property (weak, nonatomic) IBOutlet UITextField *searchField;
- (IBAction)search:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *firmsTable;

@end
