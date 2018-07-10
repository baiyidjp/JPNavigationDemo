//
//  PresendViewController.m
//  JPNavigationDemo
//
//  Created by baiyi on 2018/7/10.
//  Copyright © 2018年 dong. All rights reserved.
//

#import "PresendViewController.h"

@interface PresendViewController ()

@end

@implementation PresendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"PresendViewController";
    
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithItemImageName:@"tabbar_home" Layout:YES target:self action:@selector(p_ClickBackBtn)];
    self.jp_NavigationItem.leftBarButtonItem = backItem;

}

- (void)p_ClickBackBtn {
    
    [self dismissViewControllerAnimated:YES completion:nil];
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
