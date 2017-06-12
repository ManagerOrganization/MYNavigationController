//
//  MYNavigationController.h
//  MYNavigationController
//
//  Created by michael on 2017/6/12.
//  Copyright © 2017年 MYNavigationController. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^MYNavigationControllerCompletionBlock)(void);

@interface MYNavigationController : UIViewController

@property(nonatomic, strong) NSMutableArray *viewControllers;

- (instancetype)initWithRootViewController:(UIViewController *)rootViewController;

- (void)pushViewController:(UIViewController *)viewController;

- (void)pushViewController:(UIViewController *)viewController
                completion:(MYNavigationControllerCompletionBlock)completion;

- (void)popViewController;

- (void)popViewControllerCompletion:(MYNavigationControllerCompletionBlock)completion;

- (void)popToRootViewController;

- (void)popToViewController:(UIViewController*)toViewController;



@end
