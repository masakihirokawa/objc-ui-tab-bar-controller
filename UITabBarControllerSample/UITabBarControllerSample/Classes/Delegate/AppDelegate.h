//
//  AppDelegate.h
//  UITabBarCustomSample
//
//  Created by 廣川政樹 on 2013/09/05.
//  Copyright (c) 2013年 Masaki Hirokawa. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"
#import "FifthViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    UITabBarController *tabBarController_;
}

#pragma mark property prototype
@property (strong, nonatomic) UIWindow *window;

#pragma mark method prototype
- (void)switchTabBarController:(NSInteger)selectedViewIndex;

@end
