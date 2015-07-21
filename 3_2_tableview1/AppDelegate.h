//
//  AppDelegate.h
//  3_2_tableview1
//
//  Created by Shinya Hirai on 2015/07/21.
//  Copyright (c) 2015年 Shinya Hirai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    NSString *memberName;
//    NSArray *ary; // 配列バージョン
    NSString *memberImage;
}

@property (nonatomic,strong) NSString *memberName;
//@property (nonatomic,strong) NSArray *ary;
@property (nonatomic,strong) NSString *memberImage;

@property (strong, nonatomic) UIWindow *window;


@end

