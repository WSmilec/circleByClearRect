//
//  ViewController.m
//  circleByClearRect
//
//  Created by WangS on 17/3/15.
//  Copyright © 2017年 WangS. All rights reserved.
//

#import "ViewController.h"
#import "TestView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImageView * imgView = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    imgView.image = [UIImage imageNamed:@"img"];
    [self.view addSubview:imgView];
    
    TestView *testView = [[TestView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    testView.backgroundColor = [UIColor clearColor];
    [imgView addSubview:testView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
