//
//  HiddenNavViewController.m
//  JPNavigationDemo
//
//  Created by baiyi on 2018/7/11.
//  Copyright © 2018年 dong. All rights reserved.
//

#import "HiddenNavViewController.h"

@interface HiddenNavViewController ()

@end

@implementation HiddenNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"HiddenNav";
    
    [self jp_HiddenNavigationBarAndShowBackBtn:YES];
    
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
