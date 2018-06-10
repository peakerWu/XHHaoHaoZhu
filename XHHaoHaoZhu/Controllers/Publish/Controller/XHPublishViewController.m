//
//  XHPublishViewController.m
//  XHHaoHaoZhu
//
//  Created by zhuke on 2018/6/8.
//  Copyright © 2018年 zhuke. All rights reserved.
//

#import "XHPublishViewController.h"
#import "POP.h"

@interface XHPublishViewController ()
@property (nonatomic, strong) UIButton *dismissButton;
@end

@implementation XHPublishViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self creatDismissButton];
    }
    return self;
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
}
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleDefault;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColorHex(#2db7b5);
    
    // Dismiss button
    [self creatDismissButton];
    
    
    // Do any additional setup after loading the view.
}
- (void)creatDismissButton
{
    _dismissButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [_dismissButton setBackgroundImage:[UIImage imageNamed:@"tab_publish"] forState:UIControlStateNormal];
    _dismissButton.frame = CGRectMake(362.25, 687.5, 48, 48);
    _dismissButton.size = _dismissButton.currentBackgroundImage.size;
    [_dismissButton addTarget:self action:@selector(dimissClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_dismissButton];
}
- (void)dimissClicked
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
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
