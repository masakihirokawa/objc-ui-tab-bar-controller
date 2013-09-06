//
//  AppDelegate.m
//  UITabBarCustomSample
//
//  Created by 廣川政樹 on 2013/09/05.
//  Copyright (c) 2013年 Masaki Hirokawa. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //window初期化
    CGRect bounds = [[UIScreen mainScreen] bounds];
    _window = [[UIWindow alloc] initWithFrame:bounds];
    
    //UITabBarController初期化
    [self initTabBarController];
    
    return YES;
}

//UITabBarController初期化
- (void)initTabBarController
{
    //基点となる Controller生成
    tabBarController_ = [[UITabBarController alloc] init];
    
    //タブの背景画像と選択時の背景画像を設定
    [[UITabBar appearance] setBackgroundImage:[UIImage imageNamed:@"tab_background.png"]];
    [[UITabBar appearance] setSelectionIndicatorImage:[UIImage imageNamed:@"tab_selection_indicator.png"]];
    
    //タブメニュー選択時のビュー生成
    FirstViewController  *tabFirstVC  = [[FirstViewController alloc] init];
    SecondViewController *tabSecondVC = [[SecondViewController alloc] init];
    ThirdViewController  *tabThirdVC  = [[ThirdViewController alloc] init];
    FourthViewController *tabFourthVC = [[FourthViewController alloc] init];
    FifthViewController  *tabFifthVC  = [[FifthViewController alloc] init];
    
    //タブのアイコン指定
    [tabFirstVC.tabBarItem setFinishedSelectedImage:[UIImage imageNamed:@"tab_icon1-o.png"]
                        withFinishedUnselectedImage:[UIImage imageNamed:@"tab_icon1.png"]];
    [tabSecondVC.tabBarItem setFinishedSelectedImage:[UIImage imageNamed:@"tab_icon2-o.png"]
                         withFinishedUnselectedImage:[UIImage imageNamed:@"tab_icon2.png"]];
    [tabThirdVC.tabBarItem setFinishedSelectedImage:[UIImage imageNamed:@"tab_icon3-o.png"]
                        withFinishedUnselectedImage:[UIImage imageNamed:@"tab_icon3.png"]];
    [tabFourthVC.tabBarItem setFinishedSelectedImage:[UIImage imageNamed:@"tab_icon4-o.png"]
                         withFinishedUnselectedImage:[UIImage imageNamed:@"tab_icon4.png"]];
    [tabFifthVC.tabBarItem setFinishedSelectedImage:[UIImage imageNamed:@"tab_icon5-o.png"]
                        withFinishedUnselectedImage:[UIImage imageNamed:@"tab_icon5.png"]];
    
    //タブのタイトル指定
    [tabFirstVC setTitle:@"First"];
    [tabSecondVC setTitle:@"Second"];
    [tabThirdVC setTitle:@"Third"];
    [tabFourthVC setTitle:@"Fourth"];
    [tabFifthVC setTitle:@"Fifth"];
    
    //タブのタイトル位置設定
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -1)];
    
    //タブのタイトル色指定
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], UITextAttributeTextColor,nil] forState:UIControlStateNormal];
    
    //タブのタイトル色指定(選択中)
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor colorWithRed:0.91f green:1.0f blue:0.74f alpha:1.0f], UITextAttributeTextColor,nil] forState:UIControlStateSelected];
    
    //ビューを Controllerに追加
    NSArray *controllers = [NSArray arrayWithObjects:tabFirstVC, tabSecondVC, tabThirdVC, tabFourthVC, tabFifthVC, nil];
    [(UITabBarController *)tabBarController_ setViewControllers:controllers animated:NO];
    
    //windowに Controllerのビュー追加
    [_window addSubview:tabBarController_.view];
    [_window makeKeyAndVisible];
}

//タブ切り替え
- (void)switchTabBarController:(NSInteger)selectedViewIndex
{
    UITabBarController *controller = (UITabBarController *)tabBarController_;
    controller.selectedViewController = [controller.viewControllers objectAtIndex:selectedViewIndex];
}

- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

@end
