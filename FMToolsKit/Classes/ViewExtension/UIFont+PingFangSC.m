//
//  UIFont+PingFangSC.m
//  LyCompassForum
//
//  Created by apple on 2019/7/8.
//  Copyright © 2019 mlj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIFont+PingFangSC.h"

#define MyUIScreen  375 // UI设计原型图的手机尺寸宽度(6), 6p的--414

@implementation UIFont (PingFangSC)

+(UIFont *) PingFangSCRegular:(float)fontSize
{
    fontSize = fontSize * SCREEN_WIDTH/MyUIScreen;
    fontSize = [self resetFont:fontSize];
    if (IS_IOS_8_OR_LESS) {
        return [UIFont systemFontOfSize:fontSize];
    }else{
        return FONT_PingFang_Regular(fontSize);
    }
}

+(UIFont *) PingFangSCLight:(float)fontSize{
    
    fontSize = fontSize * SCREEN_WIDTH/MyUIScreen;
    fontSize = [self resetFont:fontSize];
    if (IS_IOS_8_OR_LESS) {
        return [UIFont boldSystemFontOfSize:fontSize];
    }else{
        return FONT_PingFang_Light(fontSize);
    }
}

+(UIFont *) PingFangSCBold:(float)fontSize{
    
    fontSize = fontSize * SCREEN_WIDTH/MyUIScreen;
    fontSize = [self resetFont:fontSize];
    if (IS_IOS_8_OR_LESS) {
        return [UIFont boldSystemFontOfSize:fontSize];
    }else{
        return FONT_PingFang_Bold(fontSize);
    }
}

+(UIFont *) PingFangSCMedium:(float)fontSize
{
    fontSize = fontSize * SCREEN_WIDTH/MyUIScreen;
    fontSize = [self resetFont:fontSize];
    if (IS_IOS_8_OR_LESS) {
        return [UIFont systemFontOfSize:fontSize];
    }else{
        return FONT_PingFang_Medium(fontSize);
    }
}

+(NSInteger)resetFont:(CGFloat)fontSize{
    NSString *localFont = [[NSUserDefaults standardUserDefaults]objectForKey:@"kLocalTextFont"];
    NSInteger font = fontSize;
    if (localFont) {
        font = font + [localFont integerValue] - 2;
    }
    return font;
}

@end
