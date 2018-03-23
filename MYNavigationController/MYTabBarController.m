//
//  MYTabBarController.m
//  MYNavigationController
//
//  Created by michael on 2017/6/6.
//  Copyright © 2017年 MYNavigationController. All rights reserved.
//

#import "MYTabBarController.h"
#import "TestViewController.h"
#import "MYNavigationController.h"
#import "HKNavigationController.h"

@interface MYTabBarController ()

@end

@implementation MYTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tabBar.opaque = NO;
      
    TestViewController *home = [[TestViewController alloc] init];
    [self addChildViewController:home andWithTitle:@"首页" andWithImage:@"fx_home_homeicon" andWithSelectedImage:@"fx_home_homeicon2"];
    
    TestViewController *message = [[TestViewController alloc] init];
    [self addChildViewController:message andWithTitle:@"消息" andWithImage:@"fx_home_info" andWithSelectedImage:@"fx_home_info2"];
    
    TestViewController *brand = [[TestViewController alloc] init];
    [self addChildViewController:brand andWithTitle:@"品牌说" andWithImage:@"fx_home_randhouse" andWithSelectedImage:@"fx_home_randhouse2"];
    
    TestViewController *personalCenter = [[TestViewController alloc] init];
    [self addChildViewController:personalCenter andWithTitle:@"个人中心" andWithImage:@"fx_home_mineicon" andWithSelectedImage:@"fx_home_mineicon2"];
}

- (void)addChildViewController:(UIViewController *)childViewController andWithTitle:(NSString *)title andWithImage:(NSString *)image andWithSelectedImage:(NSString *)selectedImage;
{
    childViewController.title = title;
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    textAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:10.0];
    [childViewController.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    NSMutableDictionary *textSelectAttrs = [NSMutableDictionary dictionary];
    textSelectAttrs[NSForegroundColorAttributeName] = [[UIColor alloc]initWithRed:54/255.0 green:185/255.0 blue:175/255.0 alpha:1.0];
    [childViewController.tabBarItem setTitleTextAttributes:textSelectAttrs forState:UIControlStateSelected];
    childViewController.tabBarItem.image = [UIImage imageNamed:image];
    childViewController.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    HKNavigationController *navController = [[HKNavigationController alloc] initWithRootViewController:childViewController];
    [self addChildViewController:navController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
