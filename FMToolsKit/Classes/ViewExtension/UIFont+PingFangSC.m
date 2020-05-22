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
    if (IS_IOS_8_OR_LESS) {
        return [UIFont systemFontOfSize:FMScale(fontSize)];
    }else{
        return FONT_PingFang_Regular(FMScale(fontSize));
    }
}

+(UIFont *) PingFangSCLight:(float)fontSize{
    
    if (IS_IOS_8_OR_LESS) {
        return [UIFont boldSystemFontOfSize:FMScale(fontSize)];
    }else{
        return FONT_PingFang_Light(FMScale(fontSize));
    }
}

+(UIFont *) PingFangSCBold:(float)fontSize{
    
    if (IS_IOS_8_OR_LESS) {
        return [UIFont boldSystemFontOfSize:FMScale(fontSize)];
    }else{
        return FONT_Helvetica_Bold(FMScale(fontSize));
    }
}

+(UIFont *) PingFangSCSemibold:(float)fontSize{
    
    if (IS_IOS_8_OR_LESS) {
        return [UIFont boldSystemFontOfSize:FMScale(fontSize)];
    }else{
        return FONT_PingFang_Bold(FMScale(fontSize));
    }
}

+(UIFont *) PingFangSCMedium:(float)fontSize
{
    if (IS_IOS_8_OR_LESS) {
        return [UIFont systemFontOfSize:FMScale(fontSize)];
    }else{
        return FONT_PingFang_Medium(FMScale(fontSize));
    }
}

@end
