//
//  ViewController.m
//  3_2_tableview1
//
//  Created by Shinya Hirai on 2015/07/21.
//  Copyright (c) 2015年 Shinya Hirai. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController () {
    NSArray *_members;
    NSArray *_memberImages;
    AppDelegate *_appDelegate;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    
    _appDelegate = [[UIApplication sharedApplication] delegate];
    
    _members = @[@"Marina",@"Takuya",@"Tomo",@"Tetsuya",@"Yoshiro",@"Shinya"];
    
    // 画像用の配列を創る
    // NSArray *memberImages = @[[UIImage imageNamed:@"shinya.jpg"],[UIImage imageNamed:@"tomo.jpg"]];
    _memberImages = @[@"marina.jpg",@"takuya.png",@"tomo.jpg",@"tetsuya.jpg",@"yoshiro.JPG",@"shinya.jpg"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _members.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // cell.textLabel.text = _members[indexPath.row];
    
    // LabelとImageViewをコードで作成 (tagバージョン)
    UILabel *nameLabel = (UILabel *)[cell viewWithTag:2];
    UIImageView *profileImageView = (UIImageView *)[cell viewWithTag:1];
    
    nameLabel.text = _members[indexPath.row];
    
    profileImageView.image = [UIImage imageNamed:_memberImages[indexPath.row]];
    // 画像を丸くするためのコード
    profileImageView.clipsToBounds = YES;
    profileImageView.layer.cornerRadius = 22.0f;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"タップ");
    // AppDelegateのmemberNameに値を渡します。
    _appDelegate.memberName = _members[indexPath.row];
    _appDelegate.memberImage = _memberImages[indexPath.row];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
