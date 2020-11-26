//
//  UIColor+DSCategory.m
//  AiLeXue
//
//  Created by Chen Xiang on 2020/8/12.
//  Copyright © 2020 郑州市金水区大山培训学校有限公司. All rights reserved.
//

#import "UIColor+DSCategory.h"
#import <DSSDK/CXShowStyleLib.h>
#import <DSSDK/UIColor+DSDark.h>
#import <DSSDK/UIColor+DSCategory.h>
#import <DSSDK/DSUIKitUtility.h>
@implementation UIColor (DSCategory)

+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha {
    //删除字符串中的空格
    NSString *cString =
        [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]
            uppercaseString];
    // String should be 6 or 8 characters
    if ([cString length] < 6) {
        return [UIColor clearColor];
    }
    // strip 0X if it appears
    //如果是0x开头的，那么截取字符串，字符串从索引为2的位置开始，一直到末尾
    if ([cString hasPrefix:@"0X"]) {
        cString = [cString substringFromIndex:2];
    }
    //如果是#开头的，那么截取字符串，字符串从索引为1的位置开始，一直到末尾
    if ([cString hasPrefix:@"#"]) {
        cString = [cString substringFromIndex:1];
    }
    if ([cString length] != 6) {
        return [UIColor clearColor];
    }

    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    // r
    NSString *rString = [cString substringWithRange:range];
    // g
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    // b
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];

    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    return [UIColor colorWithRed:((float)r / 255.0f)
                           green:((float)g / 255.0f)
                            blue:((float)b / 255.0f)
                           alpha:alpha];
}


+ (UIColor *)ds_whiteColor {
    return [UIColor ds_ffffffColor];
}

+ (UIColor *)ds_grayColor {
    return [UIColor ds_f5f5f5Color];
}

+ (UIColor *)ds_mainColor {
    return [UIColor ds_fece00Color];
}

+ (UIColor *)ds_lightYellowColor {
    return [UIColor ds_fff9e0Color];
}

+ (UIColor *)ds_redColor {
    return [UIColor ds_ff5c38Color];
}

+ (UIColor *)ds_greenColor {
    return [UIColor ds_3bc982Color];
}

+ (UIColor *)ds_blueColor {
    return [CXShowStyleLib colorWithType:@"KColor_blue"];
}

+ (UIColor *)ds_bgGrayColor {
    return [CXShowStyleLib colorWithType:@"KColor_bg_gray"];
}

+ (UIColor *)ds_divisionLineColor {
    return [UIColor ds_f1f1f1Color];
}

+ (UIColor *)ds_separatorColor {
    return [UIColor ds_f5f5f5Color];
}

+ (UIColor *)ds_obscurationColor {
    return cx_colorFromRGBAlpha(0x000000, 0.3);
}

+ (UIColor *)ds_ffffffColor {
    return cx_colorFromRGBAlpha(0xffffff,1);
}

+ (UIColor *)ds_f5f5f5Color {
    return cx_colorFromRGBAlpha(0xf5f5f5,1);
}

+ (UIColor *)ds_fece00Color {
    return cx_colorFromRGBAlpha(0xfece00,1);
}

+ (UIColor *)ds_fff9e0Color {
    return cx_colorFromRGBAlpha(0xfff9e0,1);
}

+ (UIColor *)ds_ff5c38Color {
    return cx_colorFromRGBAlpha(0xff5c38,1);
}

+ (UIColor *)ds_3bc982Color {
    return cx_colorFromRGBAlpha(0x3bc982,1);
}

+ (UIColor *)ds_f1f1f1Color {
    return cx_colorFromRGBAlpha(0xf1f1f1,1);
}

+ (UIImage *)createImageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0, 0, 1, 1);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}

@end
