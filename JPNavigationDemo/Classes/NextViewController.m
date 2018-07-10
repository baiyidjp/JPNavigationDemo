//
//  NextViewController.m
//  JPNavigationDemo
//
//  Created by baiyi on 2018/7/10.
//  Copyright © 2018年 dong. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"NextViewController";
    
    self.jp_BarTintColor = [UIColor orangeColor];
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithItemTitle:@"PopBack" Layout:NO target:self action:@selector(p_ClickPopBtn)];
    self.jp_NavigationItem.rightBarButtonItem = rightItem;
}

- (void)p_ClickPopBtn {
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
