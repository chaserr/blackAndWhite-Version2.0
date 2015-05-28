//
//  EnterGame.m
//  无极黑白块
//
//  Created by lanou3g on 15-4-19.
//  Copyright (c) 2015年 桐花. All rights reserved.
//

#import "EnterGame.h"

@implementation EnterGame

- (void)dealloc
{
    [_button1 release];
    [super dealloc];
}

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if ( self) {
        UILabel *label1 = [[UILabel alloc]initWithFrame:CGRectMake(60, 160, 280, 50)];
        label1.backgroundColor = [UIColor whiteColor];
        label1.text = @"无极黑白块";
        label1.font = [UIFont fontWithName:@"Iowan Old Style" size:50];
        label1.textAlignment = NSTextAlignmentCenter;
        [self addSubview:label1];
        [label1 release];
        
        UILabel *label2 = [[UILabel alloc]initWithFrame:CGRectMake(110, 240, 160, 30)];
        label2.backgroundColor = [UIColor whiteColor];
        label2.text = @"制作者:童星";
        label2.textAlignment = NSTextAlignmentCenter;
        [self addSubview:label2];
        [label2 release];
        
        self.button1 = [UIButton buttonWithType:UIButtonTypeSystem];
        _button1.frame = CGRectMake(130, 340, 120, 40);
        [_button1 setTitle:@"经典模式" forState:UIControlStateNormal];

        [self addSubview:_button1];
        
        UILabel *label3 = [[UILabel alloc]initWithFrame:CGRectMake(0, 600, 380, 30)];
        label3.backgroundColor = [UIColor colorWithRed:1.000 green:0.946 blue:0.999 alpha:1.000];
        label3.text = @"Copyright (c) 2015年 桐花. All rights reserved";
        label3.textAlignment = NSTextAlignmentCenter;
        [self addSubview:label3];
        [label3 release];
        
        
        
    }
    return  self;
}


@end
