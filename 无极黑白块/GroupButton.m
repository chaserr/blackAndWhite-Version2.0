//
//  GroupButton.m
//  无极黑白块
//
//  Created by lanou3g on 15-4-19.
//  Copyright (c) 2015年 桐花. All rights reserved.
//

#import "GroupButton.h"


@implementation GroupButton

- (void)dealloc
{
    [_button1 release];
    [_button2 release];
    [_button3 release];
    [_button4 release];
    [super dealloc];
}
// 封装一个一行四块的button


-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.button1 = [ButtonFlag buttonWithType:UIButtonTypeSystem];
        _button1.frame = CGRectMake(0, 0, 94, 169);
        _button1.backgroundColor = [UIColor whiteColor];
        _button1.layer.borderWidth = 0.25;
        
        _button1.flagBlack = NO;
        [self addSubview:_button1];
        
        self.button2 = [ButtonFlag buttonWithType:UIButtonTypeSystem];
        _button2.frame = CGRectMake(95, 0, 94, 169);
        _button2.backgroundColor = [UIColor whiteColor];
        _button2.layer.borderWidth = 0.25;
         _button2.flagBlack = NO;
        [self addSubview:_button2];
        
        self.button3 = [ButtonFlag buttonWithType:UIButtonTypeSystem];
        _button3.frame = CGRectMake(190, 0, 94, 169);
        _button3.backgroundColor = [UIColor whiteColor];
        _button3.layer.borderWidth = 0.25;
         _button3.flagBlack = NO;
        [self addSubview:_button3];
        
        self.button4 = [ButtonFlag buttonWithType:UIButtonTypeSystem];
        _button4.frame = CGRectMake(285, 0, 94, 169);
        _button4.backgroundColor = [UIColor whiteColor];
        _button4.layer.borderWidth = 0.25;
         _button4.flagBlack = NO;
        [self addSubview:_button4];
        
        
    }
    return self;
}

//在4个0元素的数组中,选择一个赋值1然后将其变为黑色
//将颜色变为黑色
-(void)randomBlack{
    int randomNumber = arc4random()%4;
    NSLog(@"%d",randomNumber);
    
    switch (randomNumber) {
        case 0:
            _button1.backgroundColor = [UIColor blackColor];
            _button1.flagBlack = YES;
            break;
            
        case 1:
            _button2.backgroundColor = [UIColor blackColor];
            _button2.flagBlack = YES;
            break;
        case 2:
            _button3.backgroundColor = [UIColor blackColor];
            _button3.flagBlack = YES;
            break;
        case 3:
            _button4.backgroundColor = [UIColor blackColor];
            _button4.flagBlack = YES;
            break;
        default:
            break;
    }

}

@end
