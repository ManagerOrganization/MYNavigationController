//
//  MYNavigationController.h
//  MYNavigationController
//
//  Created by michael on 2017/6/6.
//  Copyright © 2017年 MYNavigationController. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MYNavigationController : UINavigationController

@property (nonatomic, strong) NSMutableArray *arrayScreenshot;
@property (nonatomic, strong) UIPanGestureRecognizer *panGesture;

@end
