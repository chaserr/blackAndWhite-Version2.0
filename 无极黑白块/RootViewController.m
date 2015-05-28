//
//  RootViewController.m
//  无极黑白块
//
//  Created by lanou3g on 15-4-19.
//  Copyright (c) 2015年 桐花. All rights reserved.
//

#import "RootViewController.h"
#import "GroupButtonViewController.h"
#import "EnterGameViewController.h"

@interface RootViewController ()

@property(strong,nonatomic)GroupButtonViewController *GbuttonVC;
@end

@implementation RootViewController

- (void)dealloc
{
    [_countVC release];
    [_enterGmVC release];
    [_GbuttonVC release];
    [super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //游戏界面
    self.GbuttonVC = [[GroupButtonViewController alloc]init];
    _GbuttonVC.view.frame = self.view.bounds;
    _GbuttonVC.view.backgroundColor = [UIColor whiteColor];
    [self addChildViewController:_GbuttonVC];
  [self.view addSubview:_GbuttonVC.view];
    //积分器界面
    self.countVC = [[CountViewController alloc]init];
    _countVC.view.frame = self.view.bounds;
    _countVC.view.backgroundColor = [UIColor whiteColor];
    [self addChildViewController:_countVC];
    [self.view addSubview:_countVC.view];
    //登录界面
    self.enterGmVC = [[EnterGameViewController alloc]init];
    _enterGmVC.view.frame = self.view.bounds;
    _enterGmVC.view.backgroundColor = [UIColor whiteColor];
    [self addChildViewController:_enterGmVC];
    
    [self.view addSubview:_enterGmVC.view];
    [_GbuttonVC release];
    [_enterGmVC release];


    
    
}

//进入游戏
-(void)enter{
    [self.view addSubview:self.GbuttonVC.view];
    [self.enterGmVC.view removeFromSuperview];
    
    
}

//重新开始游戏
-(void)returnGame{
   
    [self.countVC.view removeFromSuperview];
    [self.view addSubview:self.GbuttonVC.view];
}

//得分计数器
-(void)lookScore:(NSString *)score gameGrand:(NSString *)gameGrand{
    [self.GbuttonVC.view removeFromSuperview];
    ((Count *)self.countVC.view).labelScore.text = score;//需要强制转换才能访问下一级的view
    ((Count *)self.countVC.view).orderScore.text = gameGrand;
    ((Count *)self.countVC.view).orderScore.font = [UIFont boldSystemFontOfSize:15];
    [self.view addSubview:self.countVC.view];
}

//GameOverbutton的事件调用
-(void)gameOverbutton{
    
    [self.GbuttonVC.view removeFromSuperview];
    [self.view addSubview:self.enterGmVC.view];

}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
