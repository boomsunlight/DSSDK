//
//  DSUIKitUtility.h
//  AiLeXue
//
//  Created by Chen Xiang on 2020/10/30.
//  Copyright © 2020 郑州市金水区大山培训学校有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/message.h>

NS_ASSUME_NONNULL_BEGIN

@interface DSUIKitUtility : NSObject
/**
 将十六进制的rgb颜色值转换为UIColor对象
 @param rgbValue 0x的十六进制
 @param alpha 透明度
 @return UIColor对象
 */
extern UIColor *cx_colorFromRGBAlpha(NSInteger rgbValue, float alpha);

/**
 颜色转变
 @param from 起始颜色
 @param to 结束颜色
 @param progress 转换比例
 @return 颜色转变后的颜色值
 */
extern UIColor *cx_colorTransform(UIColor *from, UIColor *to, CGFloat progress);

/**
 方法交换
 @param cls 类
 @param originSel 原始方法
 @param swizzleSel 交换后的方法
 */
extern void cx_swizzleClassInstanceMethod(Class cls, SEL originSel, SEL swizzleSel);




@end

NS_ASSUME_NONNULL_END
