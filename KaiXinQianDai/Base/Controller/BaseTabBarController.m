//
//  BaseTabBarController.m
//  KaiXinQianDai
//
//  Created by xiaoning on 2018/11/27.
//  Copyright © 2018年 xiaoning. All rights reserved.
//

#import "BaseTabBarController.h"
#import "TestVC.h"

@interface BaseTabBarController()<UITabBarControllerDelegate>


@end

@implementation BaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.delegate = self;
    [self configTabBar];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
    return YES;
}
- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
    [self animateTabBarButton];
}


- (void)animateTabBarButton {
    NSMutableArray *tabBarButtons = [[NSMutableArray alloc]initWithCapacity:0];
    for (UIView *tabBarButton in self.tabBar.subviews) {
        if ([tabBarButton isKindOfClass:NSClassFromString(@"UITabBarButton")]){
            [tabBarButtons addObject:tabBarButton];
        }
    }
    UIControl *tabBarButton = [tabBarButtons objectAtIndex:self.selectedIndex];
    for (UIView *imageView in tabBarButton.subviews) {
        if ([imageView isKindOfClass:NSClassFromString(@"UITabBarSwappableImageView")]) {
            CAKeyframeAnimation *animation = [CAKeyframeAnimation animation];
            animation.keyPath = @"transform.scale";
            animation.values = @[@1.0,@1.1,@0.9,@1.0];
            animation.duration = 0.3;
            animation.calculationMode = kCAAnimationCubic;
            [imageView.layer addAnimation:animation forKey:nil];
            break;
        }
    }
}

- (void)configTabBar {
    if(![KXQDHandle shareHandle].isMarket) {
        //首页
        
        
        TestVC *vc = [[TestVC alloc]init];
        UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
        nav.title = @"测试咯";
        [self addChildViewController:nav];
        
    }else {
        //借款
        //拿钱
    }
    
    //我的
}

@end
