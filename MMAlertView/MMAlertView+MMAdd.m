//
//  MMAlertView+MMAdd.m
//  MMAlertViewDemo
//
//  Created by xueMingLuan on 2018/3/8.
//  Copyright © 2018年 mille. All rights reserved.
//

#import "MMAlertView+MMAdd.h"

@implementation MMAlertView (MMAdd)

+ (MMAlertView *)showAlertViewWithMessage:(NSString *)message
{
    MMAlertView *alerView = [[MMAlertView alloc] initWithAlertViewWithStyle:MMAlertViewStyleText];
    
    return alerView;
}

+ (MMAlertView *)showAlertViewWithState:(MMAlertViewState)state
                                   desc:(NSString *)desc
{
    MMAlertView *alerView = [[MMAlertView alloc] initWithAlertViewWithStyle:MMAlertViewStyleTextAndState];
    
    return alerView;
}
@end
