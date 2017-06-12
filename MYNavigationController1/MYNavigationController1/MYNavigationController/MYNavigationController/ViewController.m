//
//  ViewController.m
//  MYNavigationController
//
//  Created by michael on 2017/6/12.
//  Copyright © 2017年 MYNavigationController. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"
#import "UIViewController+Navigation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake((self.view.frame.size.width - 100) / 2, (self.view.frame.size.height - 50) / 2, 100, 50);
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(test:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (IBAction)test:(UIButton *)sender {
    
    TestViewController *test = [[TestViewController alloc] init];
    [self.myNavigationController pushViewController:test];
}

@end
