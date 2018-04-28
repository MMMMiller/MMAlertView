//
//  ViewController.m
//  MMAlertViewDemo
//
//  Created by xueMingLuan on 2018/3/8.
//  Copyright © 2018年 mille. All rights reserved.
//

#import "ViewController.h"
#import "HUDViewController.h"
#import "MMAlertView+MMAdd.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [MMAlertView showAlertMessage:@"没问题！" toView:self.view];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.navigationController pushViewController:[HUDViewController new] animated:YES];
}

@end
