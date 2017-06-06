//
//  AppDelegate.h
//  MYNavigationController
//
//  Created by michael on 2017/6/6.
//  Copyright © 2017年 MYNavigationController. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MYScreenShotView;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) MYScreenShotView *screenShotView;

+ (AppDelegate* )shareAppDelegate;

@end

