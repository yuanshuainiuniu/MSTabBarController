//
//  OneViewController.m
//  MSCustomTabBar
//
//  Created by Marshal on 15/12/24.
//  Copyright © 2015年 Marshal. All rights reserved.
//

#import "OneViewController.h"
#import "NextViewController.h"

#import "MSTabBarViewController.h"
@interface OneViewController ()

@end

@implementation OneViewController
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    MSTabBarViewController * tabBar = (MSTabBarViewController *)self.tabBarController;
    //自定义隐藏Tabbar
    [tabBar HideTabarView:NO animated:YES];
    
    [tabBar setBadge:@"5" atIndex:2];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor brownColor];
    
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 64, ScreenWidth,ScreenHeight-64-60)];
    imageView.image = [UIImage imageNamed:@"01.jpg"];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    [self.view addSubview:imageView];
    
    
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"下一页" style:UIBarButtonItemStylePlain target:self action:@selector(rightTap)];
    
}
- (void)rightTap
{
    NextViewController * nextVC = [[NextViewController alloc]init];
    
    MSTabBarViewController * tabBar = (MSTabBarViewController *)self.tabBarController;
    //自定义隐藏Tabbar
    [tabBar HideTabarView:YES animated:YES];
    
    [self.navigationController pushViewController:nextVC animated:YES];
    
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
