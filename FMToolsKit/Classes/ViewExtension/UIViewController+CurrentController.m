//
//  UIViewController+CurrentController.m
//  LyCompassApp
//
//  Created by 徐琰璋 on 16/9/23.
//  Copyright © 2016年 上海览益信息科技有限公司. All rights reserved.
//

#import "UIViewController+CurrentController.h"

@implementation UIViewController (CurrentController)

/**
 *  获取当前正在显示的ViewController
 *
 *  @return 当前ViewController
 */
+ (UIViewController *)currentController
{
    UIViewController* vc = [UIApplication sharedApplication].keyWindow.rootViewController;
    
    while (1) {
        
        if ([vc isKindOfClass:[UITabBarController class]]) {
            vc = ((UITabBarController*)vc).selectedViewController;
        }
        if ([vc isKindOfClass:[UINavigationController class]]) {
            vc = ((UINavigationController*)vc).visibleViewController;
        }
        if (vc.presentedViewController) {
            vc = vc.presentedViewController;
        }else{
            break;
        }
        
    }
    return vc;
}

@end
