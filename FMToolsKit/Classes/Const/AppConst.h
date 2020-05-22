//
//  AppConst.h
//  Pods
//
//  Created by 徐琰璋 on 2018/11/14.
//

#ifndef AppConst_h
#define AppConst_h

#define WS(weakSelf) __weak __typeof(&*self)weakSelf = self;

#define LyTrim(C) [C stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]

//去掉字符串两端的空格及回车
#define TrimWarp(C)     [C stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet ]]

//根据屏幕适配尺寸 375：UI设计原型图的手机尺寸宽度
#define FMScale(h)  (h*[UIScreen mainScreen].bounds.size.width/375.0)

//获取window
#define MAIN_WINDOW     [UIApplication sharedApplication].keyWindow

//获取AppDelegate
#define kAppdelegate ((AppDelegate *)[[UIApplication sharedApplication] delegate])

#ifdef DEBUG // 开发
#define Log(format, ...) NSLog((@"[LINE: %d]%s: " format), __LINE__, __PRETTY_FUNCTION__, ## __VA_ARGS__)
#else // 发布
#define Log(format, ...)
#endif

//app版本号
#define APPVER          [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]

//设备系统版本号
#define SYSTEM_VERSION  [UIDevice currentDevice].systemVersion

#define IS_IOS_10               floorf([[UIDevice currentDevice].systemVersion floatValue]) ==10.0 ? 1 : 0
#define IS_IOS_10_OR_LETTER     (floorf([[UIDevice currentDevice].systemVersion floatValue]) >= 10.0)
#define IS_IOS_11_OR_LETTER     (floorf([[UIDevice currentDevice].systemVersion floatValue]) >= 11.0)
#define IS_IOS_9_OR_LESS        (floorf([[UIDevice currentDevice].systemVersion floatValue]) < 10.0)
#define IS_IOS_8_OR_LESS        (floorf([[UIDevice currentDevice].systemVersion floatValue]) < 9.0)


// 加载图片
#define PNGIMAGE(NAME)          [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:(NAME) ofType:@"png"]]
#define JPGIMAGE(NAME)          [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:(NAME) ofType:@"jpg"]]


// View 圆角和加边框
#define ViewBorderRadius(View, Radius, Width, Color)\
\
[View.layer setCornerRadius:(Radius)];\
[View.layer setMasksToBounds:YES];\
[View.layer setBorderWidth:(Width)];\
[View.layer setBorderColor:[Color CGColor]]

// View 圆角
#define ViewRadius(View, Radius)\
\
[View.layer setCornerRadius:(Radius)];\
[View.layer setMasksToBounds:YES]


#endif /* AppConst_h */
