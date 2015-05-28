//
//  Count.m
//  无极黑白块
//
//  Created by lanou3g on 15-4-20.
//  Copyright (c) 2015年 桐花. All rights reserved.
//

#import "Count.h"
#import "GroupButtonViewController.h"
@implementation Count


- (void)dealloc
{
    [_labelScore release];
    [_buttonScore release];
    [super dealloc];
}

-(id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
       // GroupButtonViewController *gbVC = [[GroupButtonViewController alloc]init];
        self.labelScore = [[UILabel alloc]initWithFrame:CGRectMake(60, 160, 280, 50)];
    //  NSString *score =  [gbVC showScore];
       // _labelScore.text = [NSString stringWithFormat:@"您的得分是:%@",score];
        //.text是在rootVC中根据参数来动态实现的
        _labelScore.textColor = [UIColor blackColor];
        _labelScore.backgroundColor = [UIColor colorWithRed:0.975 green:0.956 blue:0.926 alpha:1.000];
        [self addSubview:_labelScore];
        
        
        self.orderScore = [[UILabel alloc]initWithFrame:CGRectMake(60, 240, 280, 50)];
        _orderScore.textColor = [UIColor blackColor];
        _orderScore.backgroundColor = [UIColor colorWithRed:0.975 green:0.956 blue:0.926 alpha:1.000];
        [self addSubview:_orderScore];
        
        
        
        self.buttonScore = [UIButton buttonWithType:UIButtonTypeSystem];
        _buttonScore.frame = CGRectMake(90, 380, 200, 30);
        _buttonScore.backgroundColor = [UIColor colorWithRed:0.969 green:0.924 blue:0.975 alpha:1.000];
        [_buttonScore setTitle:@"重新开始游戏" forState:UIControlStateNormal];
        [self addSubview:_buttonScore];
        [_labelScore release];
        [_orderScore release];
       // [gbVC release];
        
    }
    return self;
}

@end
