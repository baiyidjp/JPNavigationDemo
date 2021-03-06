//
//  JPNavigationBar.m
//  JPNavigationDemo
//
//  Created by baiyi on 2018/7/10.
//  Copyright © 2018年 dong. All rights reserved.
//

#import "JPNavigationBar.h"

@implementation JPNavigationBar

- (void)layoutSubviews {
    [super layoutSubviews];
    
    //注意导航栏及状态栏高度适配
    CGFloat systemVersion = [[[UIDevice currentDevice] systemVersion] floatValue];
    self.frame = CGRectMake(0, 0, CGRectGetWidth(self.frame), NAVIGATION_BAR_HEIGHT);
    for (UIView *view in self.subviews) {
        if([NSStringFromClass([view class]) containsString:@"Background"]) {
            view.frame = self.bounds;
//            for (UIView *subView in view.subviews) {
//                if ([NSStringFromClass([subView class]) containsString:@"EffectView"]) {
//                    for (UIView *effectView in subView.subviews) {
//                        if ([NSStringFromClass([effectView class]) containsString:@"EffectSubview"]) {
//                            UIVisualEffectView *effview = (UIVisualEffectView *)effectView;
//                            effview.backgroundColor = [UIColor whiteColor];
//                            effview.tintColor = [UIColor whiteColor];
//                        }
//                    }
//                }
//            }
        }else if ([NSStringFromClass([view class]) containsString:@"ContentView"]) {
            CGRect frame = view.frame;
            frame.origin.y = STATUS_BAR_HEIGHT;
            frame.size.height = self.bounds.size.height - frame.origin.y;
            view.frame = frame;
            for (UIView *subView in view.subviews) {
                if ([NSStringFromClass([subView class]) containsString:@"BarStackView"] && systemVersion >= 11.0) {
                    
                    view.layoutMargins = UIEdgeInsetsMake(view.layoutMargins.top, 8, view.layoutMargins.bottom, 8);
                    //                    NSArray * arrayConstraint = subView.constraints;
                    //                    for (NSLayoutConstraint * constant in arrayConstraint) {
                    //                        NSLog(@"firstItem--%@ secondItem--%@",[constant.firstItem class],[constant.secondItem class]);
                    //                        if ([NSStringFromClass([constant.firstItem class]) containsString:@"UILayoutGuide"] && constant.firstAttribute == NSLayoutAttributeWidth) {
                    //                            constant.constant = 0;
                    //                        }
                    //                    }
                    
                }
            }
            
        }
    }
}

@end
