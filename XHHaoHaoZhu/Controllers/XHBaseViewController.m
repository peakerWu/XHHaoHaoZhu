//
//  XHBaseViewController.m
//  XHHaoHaoZhu
//
//  Created by zhuke on 2018/6/8.
//  Copyright © 2018年 zhuke. All rights reserved.
//

#import "XHBaseViewController.h"

@interface XHBaseViewController ()

@end

@implementation XHBaseViewController
///右滑返回功能，默认开启（YES）
- (BOOL)gestureRecognizerShouldBegin{
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
}

- (NSString *)backItemImageName
{
    return @"icon_uniform_back_w";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
