//
//  UIViewController+Navigation.m
//  MYNavigationController
//
//  Created by michael on 2017/6/12.
//  Copyright © 2017年 MYNavigationController. All rights reserved.
//

#import "UIViewController+Navigation.h"

@implementation UIViewController (Navigation)

@dynamic myNavigationController;

- (MYNavigationController *)myNavigationController {
    
    UIResponder *responder = [self nextResponder];
    
    while (responder) {
        
        if ([responder isKindOfClass:[MYNavigationController class]]) {
            
            return (MYNavigationController *)responder;
        }
        responder = [responder nextResponder];
    }
    
    return nil;
}


@end
