//
//  MMAlertView.m
//  MMAlertViewDemo
//
//  Created by xueMingLuan on 2018/3/8.
//  Copyright © 2018年 mille. All rights reserved.
//

#import "MMAlertView.h"
#import <Masonry.h>
@interface MMAlertView()

@property (nonatomic, copy) NSString *alertMessage;

@property (nonatomic, assign) MMAlertViewAnimationTyle animationType;

@end

@implementation MMAlertView

- (instancetype)initWithView:(UIView *)view style:(MMAlertViewStyle)style
{
    if ((self = [super initWithFrame:view.bounds])) {
        [view addSubview:self];
        [self configWithStyle:style];
    }
    return self;
}

- (void)configWithStyle:(MMAlertViewStyle)style
{
    switch (style) {
        case MMAlertViewStyleText: {
            [self configTextView];
        }
            break;
            
        default:
            break;
    }
}

- (void)configTextView {
    _contentColor = [UIColor colorWithWhite:0.f alpha:0.7f];
    self.opaque = NO;
    self.backgroundColor = [UIColor clearColor];
//    self.alpha = 0.0f;
    self.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.layer.allowsGroupOpacity = NO;
    
    UIView *backgroundView = [[UIView alloc] initWithFrame:self.bounds];
    backgroundView.backgroundColor = [UIColor clearColor];
    backgroundView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    backgroundView.alpha = 0.f;
    [self addSubview:backgroundView];
    _backgroundView = backgroundView;
//
    UILabel *detailsLabel = [UILabel new];
    detailsLabel.backgroundColor = _contentColor;
    detailsLabel.adjustsFontSizeToFitWidth = NO;
    detailsLabel.textAlignment = NSTextAlignmentCenter;
    detailsLabel.textColor = [UIColor whiteColor];
    detailsLabel.numberOfLines = 0;
    detailsLabel.font = [UIFont boldSystemFontOfSize:13.0f];
    detailsLabel.opaque = NO;
    [self.backgroundView addSubview:detailsLabel];
    _detailsLabel = detailsLabel;
    [_detailsLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(_backgroundView);
    }];
}

- (void)hide {
    
}

- (void)show {
    [self animateIn:YES withType:self.animationType completion:NULL];
}

- (void)animateIn:(BOOL)animatingIn withType:(MMAlertViewAnimationTyle)type completion:(void(^)(BOOL finished))completion {
    
    [UIView animateWithDuration:0.3 animations:^{
        CGFloat alpha = animatingIn ? 1.f : 0.f;
        self.backgroundView.alpha = alpha;
    } completion:^(BOOL finished) {
        
    }];
}
@end
