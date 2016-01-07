//
//  MSTabBarViewController.h
//  MSCustomTabBar
//
//  Created by Marshal on 15/12/24.
//  Copyright © 2015年 Marshal. All rights reserved.
//

#import <UIKit/UIKit.h>
#define ScreenHeight    [UIScreen mainScreen].bounds.size.height
#define ScreenWidth     [UIScreen mainScreen].bounds.size.width

#define ColorWithRGB(r,g,b,p)   [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:p]

#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"

/**
 *  自定义的TabBar:
 */
@interface MSTabBarViewController : UITabBarController



/**
 *  显示或隐藏TabBar
 *
 *  @param isHideen 是否隐藏
 *  @param animated 是否需要动画
 */
- (void)HideTabarView:(BOOL)isHideen  animated:(BOOL)animated;

- (void)setBadge:(NSString *)badge atIndex:(NSInteger)index;

@end

@interface TabBarButton : UIButton

@end

typedef  NS_ENUM(NSUInteger, AnimationType){
    Value1,
    Value2,
    Value3,
};
@interface ModalTransitionAnimation : NSObject<UIViewControllerAnimatedTransitioning>
@property (nonatomic, assign) AnimationType animationType;
@end
