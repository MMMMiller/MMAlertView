//
//  MMAlertView.h
//  MMAlertViewDemo
//
//  Created by xueMingLuan on 2018/3/8.
//  Copyright © 2018年 mille. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MMAlertViewMacro.h"

@interface MMAlertView : UIView

@property (strong, nonatomic, readonly) UILabel *detailsLabel;
@property (strong, nonatomic, nullable) UIColor *contentColor;
@property (strong, nonatomic, readonly) UIView *backgroundView;


- (instancetype)initWithView:(UIView *)view
                       style:(MMAlertViewStyle)style;
- (void)show;
- (void)hide;

@end
