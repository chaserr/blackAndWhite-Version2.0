//
//  EnterGameViewController.m
//  无极黑白块
//
//  Created by lanou3g on 15-4-19.
//  Copyright (c) 2015年 桐花. All rights reserved.
//

#import "EnterGameViewController.h"
#import "EnterGame.h"
#import "RootViewController.h"
@interface EnterGameViewController ()
@property(nonatomic,retain)RootViewController *rootVC;

@end

@implementation EnterGameViewController


- (void)dealloc
{
    [_enterGame release];
    [_rootVC release];
    [super dealloc];
}
-(void)loadView{
    
    self.enterGame = [[EnterGame alloc]init];
    self.view = _enterGame;
    [_enterGame release];
    

}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    //添加button事件
    [self.enterGame.button1 addTarget:self action:@selector(entergame:) forControlEvents:UIControlEventTouchUpInside];
    
    
}

//实现进入游戏事件
-(void)entergame:(UIButton *)button{
    self.rootVC = (RootViewController *)[self parentViewController];
    
    [_rootVC enter];
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
