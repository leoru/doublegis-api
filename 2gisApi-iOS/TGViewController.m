//
//  TGViewController.m
//  2gisApi-iOS
//
//  Created by Developer on 21.03.13.
//  Copyright (c) 2013 crtweb. All rights reserved.
//

#import "TGViewController.h"
#import "TGApi.h"

@interface TGViewController ()

@end

@implementation TGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.firmsTable.delegate = self;
    self.firmsTable.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)search:(id)sender {
    NSString *what = self.searchField.text;
    NSString *where = self.whereField.text;
    
    TGRequestParams *params = [TGRequestParams params];
    [params addParam:kWhat value:what];
    [params addParam:kWhere value:where];
    
    [[TGisClient sharedClient] firmsWithParams:params success:^(NSArray *objects) {
        firms = objects;
        [self.firmsTable reloadData];
    } failure:^(NSError *commonError) {
        
    }];
}

#pragma mark - UITableView Datasource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return firms.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"firmCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    TGFirm *firm = firms[indexPath.row];
    UILabel *label = (UILabel *)[cell viewWithTag:1];
    label.text = firm.name;
    
    return cell;
}

#pragma mark - UITableView Delegate methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}
@end
