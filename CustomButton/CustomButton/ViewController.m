//
//  ViewController.m
//  CustomButton
//
//  Created by Mike on 2016/12/16.
//  Copyright © 2016年 LK. All rights reserved.
//

#import "ViewController.h"
#import "LkButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.title = @"各种样式的btn";
    
    [self iniSubViews];
}

- (void)iniSubViews
{
    //图片在左 文字在右
    LkButton *btn1 = [[LkButton alloc] initWithFrame:CGRectMake(10, 50, 100, 40)];
    btn1.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:btn1];
    [btn1 setTitle:@"加好友" forState:UIControlStateNormal];
    [btn1 setImage:[UIImage imageNamed:@"关注空"] forState:UIControlStateNormal];
    btn1.imageRect = CGRectMake(0, 5, 30, 30);
    btn1.titleRect = CGRectMake(35, 10, 65, 20);
    
    
    //图片在右 文字在左
    LkButton *btn2 = [[LkButton alloc] initWithFrame:CGRectMake(CGRectGetMaxX(btn1.frame) + 10, 50, 100, 40)];
    btn2.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn2];
    [btn2 setTitle:@"加好友" forState:UIControlStateNormal];
    [btn2 setImage:[UIImage imageNamed:@"关注空"] forState:UIControlStateNormal];
    btn2.titleRect = CGRectMake(10, 10, 65, 20);
    btn2.imageRect = CGRectMake(70, 5, 30, 30);
    
    
     //图片在上 文字在下
    LkButton *btn3 = [[LkButton alloc] initWithFrame:CGRectMake(10, CGRectGetMaxY(btn1.frame) + 10, 80, 100)];
    btn3.backgroundColor = [UIColor blueColor];
    [self.view addSubview:btn3];
    [btn3 setTitle:@"直播间" forState:UIControlStateNormal];
    [btn3 setImage:[UIImage imageNamed:@"直播间"] forState:UIControlStateNormal];
    btn3.imageRect = CGRectMake(10, 5, 60, 60);
    btn3.titleRect = CGRectMake(10, 70, 60, 35);
    
    //图片在下 文字在上
    LkButton *btn4 = [[LkButton alloc] initWithFrame:CGRectMake(CGRectGetMaxX(btn3.frame) + 10, CGRectGetMaxY(btn1.frame) + 10, 80, 100)];
    btn4.backgroundColor = [UIColor blackColor];
    [self.view addSubview:btn4];
    [btn4 setTitle:@"直播间" forState:UIControlStateNormal];
    [btn4 setImage:[UIImage imageNamed:@"直播间"] forState:UIControlStateNormal];
    btn4.imageRect = CGRectMake(10, 30, 60, 60);
    btn4.titleRect = CGRectMake(10, 5, 60, 15);
}


@end
