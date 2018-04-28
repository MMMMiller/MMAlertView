//
//  MMAlertView+MMAdd.m
//  MMAlertViewDemo
//
//  Created by xueMingLuan on 2018/3/8.
//  Copyright © 2018年 mille. All rights reserved.
//

#import "MMAlertView+MMAdd.h"

@implementation MMAlertView (MMAdd)

+ (MMAlertView *)showAlertMessage:(NSString *)message
                           toView:(UIView *)view
{
    if (!view) {
        return nil;
    }
    MMAlertView *alertView = [[MMAlertView alloc] initWithView:view
                                                         style:MMAlertViewStyleText];
    
    [view addSubview:alertView];
    alertView.detailsLabel.text = message;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^ {
                       [alertView hide];
                   });
    
    [alertView show];
    return alertView;
}

@end
