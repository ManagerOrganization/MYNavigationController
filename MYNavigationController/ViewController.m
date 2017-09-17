//
//  ViewController.m
//  MYNavigationController
//
//  Created by michael on 2017/6/6.
//  Copyright © 2017年 MYNavigationController. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake((self.view.frame.size.width - 100) / 2, (self.view.frame.size.height - 50) / 2, 100, 50);
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(test:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (IBAction)test:(UIButton *)sender {
    
    TestViewController *test = [[TestViewController alloc] init];
    [self.navigationController pushViewController:test animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
