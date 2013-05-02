//
//  TGDetailViewController.m
//  2gisApi-iOS
//
//  Created by Кирилл Кунст on 02.04.13.
//  Copyright (c) 2013 YESWECODE. All rights reserved.
//

#import "TGDetailViewController.h"
#import "TGApi.h"

@interface TGDetailViewController ()
{
    TGFirm *firm;
}
@end

@implementation TGDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initUI];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initUI {
    self.indicator.hidden = NO;
    TGRequestParams *params = [TGRequestParams params];
    [params addParam:kID value:self.firmID];
    
    [[TGisClient sharedClient] firmWithParams:params success:^(TGFirm *nFirm) {
        firm = nFirm;
        [self updateUI];
    } failure:^(NSError *commonError) {
        
    }];
}

-(void)updateUI {
    self.indicator.hidden = YES;
    self.lblName.text = firm.name;
    self.lblAddress.text = firm.address;
}

@end
