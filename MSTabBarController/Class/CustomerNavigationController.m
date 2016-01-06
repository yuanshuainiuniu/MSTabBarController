//
//  CustomerNavigationController.m
//  MSTabBarController
//
//  Created by niuniu on 16/1/6.
//  Copyright © 2016年 Marshal. All rights reserved.
//

#import "CustomerNavigationController.h"
@implementation CustomerNavigationController

- (void)viewDidLoad{
    [super viewDidLoad];
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.childViewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    return [super pushViewController:viewController animated:animated];
    
}
@end
