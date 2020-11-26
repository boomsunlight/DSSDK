//
//  UIColor+JMIDark.h
//  JRMagicInsuranceApp
//
//  Created by yan on 2020/5/18.
//  Copyright © 2020 yangln. All rights reserved.
//
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/// 适配暗黑模式 UIColor 的分类
@interface UIColor (DSDark)

/// 根据不同的UIUserInterfaceStyle生成颜色
/// @param lightColor lightColor
/// @param darkColor darkColor
+ (UIColor *)colorWithLightColor:(UIColor *)lightColor darkColor:(UIColor *)darkColor;


/// 设置颜色
/// @param string 颜色字符串（0x或#开头）
+ (UIColor *)colorWithString:(NSString *)string;

/// 设置颜色
/// @param string 颜色字符串（0x或#开头）
/// @param alpha 透明度
+ (UIColor *)colorWithString:(NSString *)string alpha:(CGFloat)alpha;

+ (UIImage *)createImageWithColor:(UIColor *)color;





@end

NS_ASSUME_NONNULL_END
