//
//  MMAlertView.h
//  MMAlertViewDemo
//
//  Created by xueMingLuan on 2018/3/8.
//  Copyright © 2018年 mille. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MMAlertViewMacro.h"

@interface MMAlertAction : NSObject

+ (instancetype)actionWithTitle:(NSString *)title style:(UIAlertActionStyle)style handler:(void (^)(UIAlertAction *action))handler;

@property (nonatomic, readonly) NSString *title;
@property (nonatomic, readonly) UIAlertActionStyle style;
@property (nonatomic, getter=isEnabled) BOOL enabled;

@end

@interface MMAlertView : UIView

- (instancetype)initWithAlertViewWithStyle:(MMAlertViewStyle)alertViewStyle;

@property (nonatomic, readonly) NSArray<MMAlertAction *> *actions;

@end
