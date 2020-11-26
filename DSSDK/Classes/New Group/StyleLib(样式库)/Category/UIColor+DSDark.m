//
//  UIColor+JMIDark.m
//  JRMagicInsuranceApp
//
//  Created by yan on 2020/5/18.
//  Copyright © 2020 yangln. All rights reserved.
//

#import "UIColor+DSDark.h"
@implementation UIColor (DSDark)

+ (UIColor *)colorWithLightColor:(UIColor *)lightColor darkColor:(UIColor *)darkColor {
    if (@available(iOS 13.0, *)) {
        return [UIColor colorWithDynamicProvider:^UIColor *_Nonnull(
                            UITraitCollection *_Nonnull trainCollection) {
          if ([trainCollection userInterfaceStyle] == UIUserInterfaceStyleLight) {
              return lightColor;
          } else {
              return darkColor;
          }
        }];
    } else {
        return lightColor ? lightColor : (darkColor ? darkColor : [UIColor clearColor]);
    }
}

+ (UIColor *)colorWithString:(NSString *)string {
    return [self colorWithString:string alpha:1.0];
}

+ (UIColor *)colorWithString:(NSString *)string alpha:(CGFloat)alpha {
    NSString *newString =
        [[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]
            uppercaseString];

    // String should be 6 or 8 characters
    if ([newString length] < 6) {
        return [UIColor clearColor];
    }

    // strip 0X if it appears
    if ([newString hasPrefix:@"0X"]) {
        newString = [newString substringFromIndex:2];
    } else if ([newString hasPrefix:@"#"]) {
        newString = [newString substringFromIndex:1];
    }

    if ([newString length] != 6) {
        return [UIColor clearColor];
    }

    // Separate into r, g, b substrings
    NSRange range = NSMakeRange(0, 2);
    NSString *rString = [newString substringWithRange:range];

    range.location = 2;
    NSString *gString = [newString substringWithRange:range];

    range.location = 4;
    NSString *bString = [newString substringWithRange:range];

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



@end
