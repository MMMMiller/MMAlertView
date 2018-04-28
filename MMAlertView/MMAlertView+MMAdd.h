//
//  MMAlertView+MMAdd.h
//  MMAlertViewDemo
//
//  Created by xueMingLuan on 2018/3/8.
//  Copyright © 2018年 mille. All rights reserved.
//

#import "MMAlertView.h"

@interface MMAlertView (MMAdd)

/** 显示一个1.5s后自动消失的HUD*/
+ (MMAlertView *)showAlertMessage:(NSString *)message
                           toView:(UIView *)view;

@end
