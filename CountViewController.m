//
//  CountViewController.m
//  无极黑白块

//  Copyright (c) 2015年 桐花. All rights reserved.
//

#import "CountViewController.h"
#import "RootViewController.h"
@interface CountViewController ()
@property(strong,nonatomic)RootViewController *rootVC;
@end

@implementation CountViewController


- (void)dealloc
{
    [_countView release];
    [_rootVC release];
    [super dealloc];
}

-(void)loadView{
    
    self.countView = [[Count alloc]init];
    self.view = _countView;
    [_countView release];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //添加点击事件
    [self.countView.buttonScore addTarget:self action:@selector(score:) forControlEvents:UIControlEventTouchUpInside];
    
}

//实现点击事件

-(void)score:(UIButton *)button{
    self.rootVC = (RootViewController *)[self parentViewController];
    [_rootVC returnGame];
}


//

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
