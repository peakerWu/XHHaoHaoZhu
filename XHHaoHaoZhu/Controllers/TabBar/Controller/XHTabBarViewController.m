//
//  XHTabBarViewController.m
//  XHHaoHaoZhu
//
//  Created by zhuke on 2018/6/8.
//  Copyright © 2018年 zhuke. All rights reserved.
//

#import "XHTabBarViewController.h"
#import "XHHomeViewController.h"
#import "XHDecorationViewController.h"
#import "XHAcountViewController.h"
#import "XHPublishViewController.h"
#import "XHNavigationViewController.h"
#import "XHPublishViewController.h"
#import "XHTabBar.h"

@interface XHTabBarViewController ()

@end

@implementation XHTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Creat tabBar
    [self creatTarBar];
}

- (void)creatTarBar {
    
    // Home view controller
    [self setupChildVC:[[XHHomeViewController alloc] init] image:@"tab_home_n" selectedImage:@"tab_home_s"];
    
    // Decoration view controller
    [self setupChildVC:[[XHDecorationViewController alloc] init] image:@"tab_decorate_n" selectedImage:@"tab_decorate_s"];
    
    // Acount view controller
    [self setupChildVC:[[XHAcountViewController alloc] init] image:@"tab_me_n" selectedImage:@"tab_me_s"];
    
    // Replace system tabBar
    [self setValue:[[XHTabBar alloc] init] forKeyPath:@"tabBar"];
}

- (void)setupChildVC:(UIViewController *)vc image:(NSString *)image selectedImage:(NSString *)selected
{
    XHNavigationViewController *nav = [[XHNavigationViewController alloc] initWithRootViewController:vc];
    UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:nil image:[[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:selected] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    item.imageInsets = UIEdgeInsetsMake(5, 0, -5, 0);
    nav.tabBarItem = item;
    
    [self addChildViewController:nav];
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
