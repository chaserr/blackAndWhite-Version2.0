//
//  GroupButton.h
//  无极黑白块
//
//  Created by lanou3g on 15-4-19.
//  Copyright (c) 2015年 桐花. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ButtonFlag.h"

@interface GroupButton : UIButton

@property(nonatomic,retain)ButtonFlag *button1;
@property(nonatomic,retain)ButtonFlag *button2;
@property(nonatomic,retain)ButtonFlag *button3;
@property(nonatomic,retain)ButtonFlag *button4;

-(void)randomBlack;
@end
