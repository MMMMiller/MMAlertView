//
//  MMAlerLabel.m
//  MMAlertViewDemo
//
//  Created by xueMingLuan on 2018/3/9.
//  Copyright © 2018年 mille. All rights reserved.
//

#import "MMAlerLabel.h"

@implementation MMAlerLabel

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(context, [UIColor clearColor].CGColor);
    CGContextSetFillColorWithColor(context, self.fillColor.CGColor);
    
    CGFloat width = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    CGFloat radius = self.layer.cornerRadius;
    
    CGContextMoveToPoint(context, radius, 0);
    // 上右顶点
    CGContextAddArcToPoint(context,
                           width,
                           0,
                           width,
                           height - radius,
                           radius);
    // 下右顶点
    CGContextAddArcToPoint(context,
                           width,
                           height,
                           radius,
                           height,
                           radius);
    
    // 左下顶点
    CGContextAddArcToPoint(context,
                           0,
                           height,
                           0,
                           height - radius,
                           radius);
    
    // 左上顶点
    CGContextAddArcToPoint(context,
                           0,
                           0,
                           radius,
                           0,
                           radius);
    
    CGContextSetShadowWithColor(context, CGSizeMake(0, 1.0f), 1.0f, [self colorWithHex:0x999999].CGColor);
    CGContextClosePath(context);
    CGContextDrawPath(context, kCGPathFillStroke);
    
    [super drawRect:rect];
}

- (UIColor *)colorWithHex:(NSUInteger)hex {
    CGFloat red, green, blue, alpha;
    
    red = ((CGFloat)((hex >> 16) & 0xFF)) / ((CGFloat)0xFF);
    green = ((CGFloat)((hex >> 8) & 0xFF)) / ((CGFloat)0xFF);
    blue = ((CGFloat)((hex >> 0) & 0xFF)) / ((CGFloat)0xFF);
    alpha = hex > 0xFFFFFF ? ((CGFloat)((hex >> 24) & 0xFF)) / ((CGFloat)0xFF) : 1;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

@end
