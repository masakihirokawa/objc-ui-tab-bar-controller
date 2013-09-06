//
//  ThirdViewController.m
//  UITabBarCustomSample
//
//  Created by 廣川政樹 on 2013/09/05.
//  Copyright (c) 2013年 Masaki Hirokawa. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    //背景指定
    self.view.backgroundColor = [UIColor underPageBackgroundColor];
    
    //タイトルラベル配置
    UILabel *titleLabel = [DCLabel planeLabel:TITLE_RECT
                                         text:@"ThirdViewController" font:[UIFont fontWithName:@"Helvetica" size:20]
                                    textColor:[UIColor whiteColor] textAlignment:NSTextAlignmentCenter
                              backgroundColor:[UIColor colorWithRed:0.0f green:0.0f blue:0.0f alpha:0.5f]];
    [self.view addSubview:titleLabel];
    
    //画面遷移ボタン配置
    UIButton *transitionButton = [DCButton planeButton:BTN_RECT
                                                  text:@"Go to FourthViewController"
                                              delegate:self action:@selector(transitionButtonTapEvent:) tag:FOURTH_ID];
    [self.view addSubview:transitionButton];
}

- (void)transitionButtonTapEvent:(UIButton *)button
{
    NSUInteger viewControllerId = button.tag;
    [APP_DELEGATE switchTabBarController:viewControllerId];
}

@end
