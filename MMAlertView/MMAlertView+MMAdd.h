//
//  MMAlertView+MMAdd.h
//  MMAlertViewDemo
//
//  Created by xueMingLuan on 2018/3/8.
//  Copyright © 2018年 mille. All rights reserved.
//

#import "MMAlertView.h"

@interface MMAlertView (MMAdd)

// 纯文字提示弹框
+ (MMAlertView *)showAlertViewWithMessage:(NSString *)message;

// 文字+状态图提示弹框
+ (MMAlertView *)showAlertViewWithState:(MMAlertViewState)state
                                   desc:(NSString *)desc;
@end
