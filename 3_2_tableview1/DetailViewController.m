//
//  DetailViewController.m
//  3_2_tableview1
//
//  Created by Shinya Hirai on 2015/07/21.
//  Copyright (c) 2015年 Shinya Hirai. All rights reserved.
//

#import "DetailViewController.h"
#import "AppDelegate.h"

@interface DetailViewController () {
    AppDelegate *_appDelegate;
}

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _appDelegate = [[UIApplication sharedApplication] delegate];
    
    self.title = _appDelegate.memberName;
    
    NSLog(@"%@",_appDelegate.memberImage);
    self.profileImageView.image = [UIImage imageNamed:_appDelegate.memberImage];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
