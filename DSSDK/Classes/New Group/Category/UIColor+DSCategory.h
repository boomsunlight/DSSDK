//
//  UIColor+DSCategory.h
//  AiLeXue
//
//  Created by Chen Xiang on 2020/8/12.
//  Copyright © 2020 郑州市金水区大山培训学校有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface UIColor (DSCategory)

+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;


#pragma mark - 常规色
+ (UIColor *)ds_whiteColor;

+ (UIColor *)ds_grayColor;

+ (UIColor *)ds_mainColor;

+ (UIColor *)ds_lightYellowColor;

+ (UIColor *)ds_redColor;

+ (UIColor *)ds_greenColor;

+ (UIColor *)ds_blueColor;
+ (UIColor *)ds_bgGrayColor;

/// 分割线颜色
+ (UIColor *)ds_divisionLineColor;
/// 分隔条颜色
+ (UIColor *)ds_separatorColor;
/// 蒙层颜色
+ (UIColor *)ds_obscurationColor;

+ (UIColor *)ds_ffffffColor;

+ (UIColor *)ds_f5f5f5Color;

+ (UIColor *)ds_fece00Color;

+ (UIColor *)ds_fff9e0Color;

+ (UIColor *)ds_ff5c38Color;

+ (UIColor *)ds_3bc982Color;

#pragma mark - 分割线
+ (UIColor *)ds_f1f1f1Color;


+ (UIImage *)createImageWithColor:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END
