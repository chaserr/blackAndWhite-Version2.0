//
//  GroupButtonViewController.m
//  无极黑白块
//
//  Created by 桐花 on 15-4-19.
//  Copyright (c) 2015年 童星. All rights reserved.
//

#import "GroupButtonViewController.h"
#import "GroupButton.h"
#import "RootViewController.h"

@interface GroupButtonViewController ()

@property(nonatomic,retain)GroupButton *line1;
@property(nonatomic,retain)GroupButton *line2;
@property(nonatomic,retain)GroupButton *line3;
@property(nonatomic,retain)GroupButton *line4;
@property(nonatomic,retain)GroupButton *line5;
@property(nonatomic,retain)RootViewController *rootVC;


@end

@implementation GroupButtonViewController

- (void)dealloc
{
    [_warn release];
    [_labelScore release];
    [_EntergameVC release];
    [_returnScore release];
    [_scorewarn release];
    [_line1 release];
    [_line2 release];
    [_line3 release];
    [_line4 release];
    [_line5 release];
    [_rootVC dealloc];
    [super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor colorWithRed:0.667 green:0.468 blue:0.601 alpha:1.000];
    
 //   布局
    self.line1 = [[GroupButton alloc]initWithFrame:CGRectMake(0, -170, 380, 169)];
    [_line1 randomBlack];
    [self.view addSubview:_line1];
    
    
    self.line2 = [[GroupButton alloc]initWithFrame:CGRectMake(0, 0, 380, 169)];
    [_line2 randomBlack];
    [self.view addSubview:_line2];
    
    
    self.line3 = [[GroupButton alloc]initWithFrame:CGRectMake(0, 170, 380, 169)];
    [_line3 randomBlack];
    [self.view addSubview:_line3];
    
    
    self.line4 = [[GroupButton alloc]initWithFrame:CGRectMake(0, 340, 380, 169)];
    [_line4 randomBlack];
    [self.view addSubview:_line4];
    
    
    self.line5 = [[GroupButton alloc]initWithFrame:CGRectMake(0, 510, 380, 169)];
    [_line5 randomBlack];
    [self.view addSubview:_line5];

    //添加点击事件
    [_line2.button1 addTarget:self action:@selector(error:) forControlEvents:UIControlEventTouchDown];
    [_line2.button2 addTarget:self action:@selector(error:) forControlEvents:UIControlEventTouchDown];
    [_line2.button3 addTarget:self action:@selector(error:) forControlEvents:UIControlEventTouchDown];
    [_line2.button4 addTarget:self action:@selector(error:) forControlEvents:UIControlEventTouchDown];
    
    [_line3.button1 addTarget:self action:@selector(error:) forControlEvents:UIControlEventTouchDown];
    [_line3.button2 addTarget:self action:@selector(error:) forControlEvents:UIControlEventTouchDown];
    [_line3.button3 addTarget:self action:@selector(error:) forControlEvents:UIControlEventTouchDown];
    [_line3.button4 addTarget:self action:@selector(error:) forControlEvents:UIControlEventTouchDown];
    
    [_line4.button1 addTarget:self action:@selector(error:) forControlEvents:UIControlEventTouchDown];
    [_line4.button2 addTarget:self action:@selector(error:) forControlEvents:UIControlEventTouchDown];
    [_line4.button3 addTarget:self action:@selector(error:) forControlEvents:UIControlEventTouchDown];
    [_line4.button4 addTarget:self action:@selector(error:) forControlEvents:UIControlEventTouchDown];
    
    //规定只能在最后一行进行点击,其余行点击都会出现错误
    [_line5.button1 addTarget:self action:@selector(judge:) forControlEvents:UIControlEventTouchUpInside];
    [_line5.button2 addTarget:self action:@selector(judge:) forControlEvents:UIControlEventTouchUpInside];
    [_line5.button3 addTarget:self action:@selector(judge:) forControlEvents:UIControlEventTouchUpInside];
    [_line5.button4 addTarget:self action:@selector(judge:) forControlEvents:UIControlEventTouchUpInside];
    
}
//添加error事件
-(void)error:(ButtonFlag *)button{
    //添加动画
    //_scoreCount=0;//分数清零
    if (!button.flagBlack) {
        [UIView beginAnimations:nil context:self];
        [UIView setAnimationDuration:0.2];
        [UIView setAnimationRepeatCount:3];
        button.backgroundColor = [UIColor redColor];
        button.backgroundColor = [UIColor whiteColor];
        [UIView commitAnimations];
        NSLog(@"点错了哦,再来一次");
        self.warn = [[UIAlertView alloc]initWithTitle:@"Game Over " message:@"" delegate:self cancelButtonTitle:@"查看您的分数" otherButtonTitles:@"重新开始游戏",nil, nil];
     //   _warn.tag = 101;
        [_warn show];
       
    }
}

//添加alertView按钮点击事件
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{

  NSLog(@"buttonIndex is :%ld",buttonIndex);
    switch (buttonIndex) {
        case 0://查看分数
        {
            self.rootVC = (RootViewController *)[self parentViewController];
            //第一种实现积分方法
            NSString *str = [NSString stringWithFormat:@"%d",_scoreCount];
            NSString * socre = [NSString stringWithFormat:@"本次得分是:%@",str] ;
            NSString *order = [self showOrder];
            [_rootVC lookScore:socre gameGrand:order];
            _scoreCount=0;//分数置为0
            /**
             *  下面是第二种计数的方式:直接把上面注掉就行
             */
//             self.returnScore = [NSString stringWithFormat:@"您的分数是:%@",[self showScore]];
//             
//             self.scorewarn = [[UIAlertView alloc]initWithTitle:@"恭喜" message:_returnScore delegate:self cancelButtonTitle:@"返回" otherButtonTitles:nil, nil];
//             // _scorewarn.tag = 102;
//             
//             [NSTimer scheduledTimerWithTimeInterval:5.0f target:self selector:@selector(dismiss:) userInfo:nil repeats:NO];
//             _scoreCount =0;//分数置为0
//             [_scorewarn show];

            }
            break;
            
        case 1://重新开始游戏
            self.rootVC = (RootViewController *)[self parentViewController];
            [_rootVC gameOverbutton];
            break;
            
            break;
        default:
            break;
    }

}
//实现计时器方法
//-(void)dismiss:(NSTimer *)timer{
//    NSLog(@"1秒后我就消失");
//    [_scorewarn dismissWithClickedButtonIndex:0 animated:YES];
//}

//添加判断事件,判断最后一行点击的是不是黑色,如果是,坐标下移,否则提示点错
-(void)judge:(ButtonFlag *)button{

    if (button.flagBlack) {//如果点击的是黑色
       // NSLog(@"点击正确,加油哦");
        _scoreCount++;
        NSLog(@"我的得分是:%d",_scoreCount);
        [UIView beginAnimations:nil context:self];
        [UIView setAnimationDuration:0.2];
        [UIView setAnimationRepeatCount:3];
        button.backgroundColor = [UIColor whiteColor];
        button.backgroundColor = [UIColor blackColor];
        button.backgroundColor = [UIColor whiteColor];
        [UIView commitAnimations];
        
        [self circulationButton:button];
        
       }else
        [self error:button];
   
}

-(void)circulationButton:(ButtonFlag *)button{

    //坐标下移
    _line1.frame = CGRectMake(0, 0, 380, 169);
    _line2.frame = CGRectMake(0, 170, 380, 169);
    _line3.frame = CGRectMake(0, 340, 380, 169);
    _line4.frame = CGRectMake(0, 510, 380, 169);
    _line5.frame = CGRectMake(0, 680, 380, 169);
    
    [_line5 removeFromSuperview];
    _line5 = _line4;
    [_line5.button1 addTarget:self action:@selector(judge:) forControlEvents:UIControlEventTouchUpInside];
    [_line5.button2 addTarget:self action:@selector(judge:) forControlEvents:UIControlEventTouchUpInside];
    [_line5.button3 addTarget:self action:@selector(judge:) forControlEvents:UIControlEventTouchUpInside];
    [_line5.button4 addTarget:self action:@selector(judge:) forControlEvents:UIControlEventTouchUpInside];

    _line4 = _line3;
    _line3 = _line2;
    _line2 = _line1;
    GroupButton *tempLine = [[GroupButton alloc]initWithFrame:CGRectMake(0, -170, 380, 169)];
    [tempLine randomBlack];
    
    [tempLine.button1 addTarget:self action:@selector(error:) forControlEvents:UIControlEventTouchUpInside];
    [tempLine.button2 addTarget:self action:@selector(error:) forControlEvents:UIControlEventTouchUpInside];
    [tempLine.button3 addTarget:self action:@selector(error:) forControlEvents:UIControlEventTouchUpInside];
    [tempLine.button4 addTarget:self action:@selector(error:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:tempLine];
    _line1 = tempLine;
    

    
}

//显示成绩,把int型转化为string型然后展示在label上
-(NSString *)showOrder{
    NSString *str;
    if (_scoreCount<30) {
        str = [NSString stringWithFormat:@"%@",@"你还是一只小菜鸟哦,继续加油哦"];
    }else if(_scoreCount<60){
        str = [NSString stringWithFormat:@"%@",@"你已经是一只吃肉的鸟了,要加油哦"];
    }else if(_scoreCount<90){
        str = [NSString stringWithFormat:@"%@",@"再差一步你就是大鸟了,加油哦"];
    }else{
        str = [NSString stringWithFormat:@"%@",@"你是大神啊,全世界都在膜拜你"];

    }
    
    return str;
}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
