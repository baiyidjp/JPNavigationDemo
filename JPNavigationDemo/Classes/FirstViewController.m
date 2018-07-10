//
//  FirstViewController.m
//  JPNavigationDemo
//
//  Created by baiyi on 2018/7/10.
//  Copyright © 2018年 dong. All rights reserved.
//

#import "FirstViewController.h"
#import "NextViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithItemTitle:@"Next" Layout:NO target:self action:@selector(p_ClickRightItem)];
    self.jp_NavigationItem.rightBarButtonItem = rightItem;
    
}

- (void)p_ClickRightItem {
    
    [self.navigationController pushViewController:[NextViewController new] animated:YES];
}


@end
