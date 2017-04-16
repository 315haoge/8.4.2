//
//  ViewController.m
//  8.4.2 点击手势UITapGestureRecognizer
//
//  Created by 李维佳 on 2017/4/2.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建UIView对象
    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 250, 50)];
    myView.backgroundColor = [UIColor redColor];
    [self.view addSubview:myView];
    //单击，单手指
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTap:)];
    //单击
    singleTap.numberOfTapsRequired = 1;
    //单手指
    singleTap.numberOfTouchesRequired = 1;
    //添加到myView
    [myView addGestureRecognizer:singleTap];
}

- (void)singleTap:(UITapGestureRecognizer *) tap {
    NSLog(@"单个手势单击触发!");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
