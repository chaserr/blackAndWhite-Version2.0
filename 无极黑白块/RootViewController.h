//
//  RootViewController.h
//  无极黑白块
//
//  Created by lanou3g on 15-4-19.
//  Copyright (c) 2015年 桐花. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EnterGameViewController.h"
#import "GroupButtonViewController.h"
#import "CountViewController.h"
@interface RootViewController : UIViewController<UIAlertViewDelegate>
@property(strong,nonatomic)EnterGameViewController *enterGmVC;
@property(strong,nonatomic)CountViewController *countVC;
-(void)gameOverbutton;//游戏结束
-(void)enter;//进入游戏
-(void)lookScore:(NSString *)score gameGrand:(NSString *)gameGrand; //查看分数和等级
-(void)returnGame;//返回游戏
@end
