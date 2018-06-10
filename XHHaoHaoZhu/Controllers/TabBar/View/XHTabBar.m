//
//  XHTabBar.m
//  XHHaoHaoZhu
//
//  Created by zhuke on 2018/6/8.
//  Copyright © 2018年 zhuke. All rights reserved.
//

#import "XHTabBar.h"
#import "XHPublishViewController.h"

@interface XHTabBar ()
@property (nonatomic, strong) UIButton *publishButton;
@end

@implementation XHTabBar

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundImage:[UIImage imageNamed:@"tab_bar"]];
        
        // Creat publish button
        _publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_publishButton setBackgroundImage:[[UIImage imageNamed:@"tab_publish"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        [_publishButton addTarget:self action:@selector(publishButtonDidClicked:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_publishButton];
    }
    return self;
}
- (void)publishButtonDidClicked:(UIButton *)sender
{
    // Present publishViewController
    XHPublishViewController *publishVC = [[XHPublishViewController alloc] init];
    
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:publishVC animated:YES completion:nil] ;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    // Publish button frame
    CGFloat publishButtonCenterX = (self.width / 4) / 2 + (self.width / 4) * 3;
    _publishButton.size = _publishButton.currentBackgroundImage.size;
    _publishButton.center = CGPointMake(publishButtonCenterX, self.height*0.5);
    
    
    NSLog(@"%f, %f, %f, %f, %f, %f", self.centerY, _publishButton.centerY, publishButtonCenterX, self.height, _publishButton.height, self.centerY - 24);
    
    CGFloat buttonW = self.width / 4;
    CGFloat buttonH = self.height;
    CGFloat buttonX = 0;
    CGFloat buttonY = 0;
    
    NSInteger index = 0;
    // Other button frame
    for (UIView *button in self.subviews) {
        // If button not belong to system tabBar button. Skip the loop
        if (![button isKindOfClass:NSClassFromString(@"UITabBarButton")]) continue;
        
        button.frame = CGRectMake(buttonX + buttonW * index, buttonY, buttonW, buttonH);
        index ++;
    }
    
    
}

@end
