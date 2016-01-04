//
//  TwoViewController.m
//  MSCustomTabBar
//
//  Created by Marshal on 15/12/24.
//  Copyright © 2015年 Marshal. All rights reserved.
//

#import "TwoViewController.h"
#import "MSTabBarViewController.h"
@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 64, ScreenWidth,ScreenHeight-64-60)];
    imageView.image = [UIImage imageNamed:@"02.jpg"];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    [self.view addSubview:imageView];
    
    MSTabBarViewController * tabBar = (MSTabBarViewController *)self.tabBarController;
    [tabBar setBadge:@"" atIndex:1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
