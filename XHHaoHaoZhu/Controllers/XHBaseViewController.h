//
//  XHBaseViewController.h
//  XHHaoHaoZhu
//
//  Created by zhuke on 2018/6/8.
//  Copyright © 2018年 zhuke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XHBaseViewController : UIViewController

@property (nonatomic, assign) BOOL hideBackItem;

/// 右滑返回功能，默认开启（YES）
- (BOOL)gestureRecognizerShouldBegin;

- (NSString *)backItemImageName;

@end
