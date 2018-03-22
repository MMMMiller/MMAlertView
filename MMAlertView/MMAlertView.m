//
//  MMAlertView.m
//  MMAlertViewDemo
//
//  Created by xueMingLuan on 2018/3/8.
//  Copyright © 2018年 mille. All rights reserved.
//

#import "MMAlertView.h"
#import "MMAlerLabel.h"

@implementation MMAlertAction

+ (instancetype)actionWithTitle:(NSString *)title
                          style:(UIAlertActionStyle)style
                        handler:(void (^)(UIAlertAction *))handler
{
    return MMAlertAction.new;
}

@end

@implementation MMAlertView

- (instancetype)initWithAlertViewWithStyle:(MMAlertViewStyle)alertViewStyle
{
    MMAlertView *alertView = [MMAlertView new];
    switch (alertViewStyle) {
        case MMAlertViewStyleText: {
            [self configTextAlertView:alertView];
        }
            break;
            
        case MMAlertViewStyleTextAndState: {
            [self configTextAndStateAlertView:alertView];
        }
            break;
            
        case MMAlertViewStyleSingleButton: {
            [self configSingleButtonAlertView:alertView];
        }
            break;
            
        case MMAlertViewStyleSheet: {
            [self configSheetAlertView:alertView];
        }
            break;
            
        default: {
            return nil;
        }
            break;
    }
    return alertView;
}

- (void)configTextAlertView:(MMAlertView *)alertView {
    
}

- (void)configTextAndStateAlertView:(MMAlertView *)alertView {
    
}

- (void)configSingleButtonAlertView:(MMAlertView *)alertView {
    
}

- (void)configSheetAlertView:(MMAlertView *)alertView {
    
}

@end
