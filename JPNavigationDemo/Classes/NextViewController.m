//
//  NextViewController.m
//  JPNavigationDemo
//
//  Created by baiyi on 2018/7/10.
//  Copyright © 2018年 dong. All rights reserved.
//

#import "NextViewController.h"
#import "HiddenNavViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"NextViewController";
    
    self.jp_BarTintColor = [UIColor orangeColor];
    
    [self jp_SetNavigationRightTextItemWithInfoString:@"HiddenNav" target:self action:@selector(p_ClickHiddenNav)];
}

- (void)p_ClickHiddenNav {
    
    [self.navigationController pushViewController:[HiddenNavViewController new] animated:YES];
}

@end
