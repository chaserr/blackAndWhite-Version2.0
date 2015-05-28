//
//  GroupButtonViewController.h
//  无极黑白块
//
//  Created by lanou3g on 15-4-19.
//  Copyright (c) 2015年 桐花. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GroupButton.h"
#import "EnterGameViewController.h"
#import "RootViewController.h"
@interface GroupButtonViewController : UIViewController<UIAlertViewDelegate>

@property(strong,nonatomic)UIAlertView *warn;//提示框
@property(strong,nonatomic)UIAlertView *scorewarn;//成绩提示框
@property(strong,nonatomic)EnterGameViewController *EntergameVC;
@property(assign,nonatomic)int scoreCount;//得分
@property(strong,nonatomic)UILabel *labelScore;
@property(strong,nonatomic)NSString *returnScore;


-(NSString *)showOrder;//显示得分
@end
