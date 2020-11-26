//
//  UIView+CXDarkMode.m
//  AiLeXue
//
//  Created by Chen Xiang on 2020/11/6.
//  Copyright © 2020 郑州市金水区大山培训学校有限公司. All rights reserved.
//

#import "UIView+CXDarkMode.h"
#import "CXShowStyleLib.h"
@implementation UIView (CXDarkMode)

- (UIView * _Nonnull (^)(void))color_bg {
    return ^id(){
        self.backgroundColor= [CXShowStyleLib colorWithType:@"KColor_bg"];
        return self;
    };
}

- (UIView * _Nonnull (^)(void))color_secondaryBg {
    return ^id(){
        self.backgroundColor= [CXShowStyleLib colorWithType:@"KColor_secondaryBg"];
        return self;
    };
}

- (UIView * _Nonnull (^)(void))color_bgWhite {
    return ^id() {
        self.backgroundColor = [CXShowStyleLib colorWithType:@"KColor_bg_white"];
        return self;
    };
}

- (UIView * _Nonnull (^)(void))color_bgBlue {
    return ^id() {
        self.backgroundColor = [CXShowStyleLib colorWithType:@"KColor_blue"];
        return self;
    };
}

- (UIView * _Nonnull (^)(void))color_bgGray {
    return ^id() {
        self.backgroundColor = [CXShowStyleLib colorWithType:@"KColor_bg_gray"];
        return self;
    };
}

@end
