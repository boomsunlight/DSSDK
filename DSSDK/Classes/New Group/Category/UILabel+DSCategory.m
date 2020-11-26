//
//  UILabel+DSCategory.m
//  AiLeXue
//
//  Created by Chen Xiang on 2020/11/4.
//  Copyright © 2020 郑州市金水区大山培训学校有限公司. All rights reserved.
//

#import "UILabel+DSCategory.h"
#import <DSSDK/CXShowStyleLib.h>
@implementation UILabel (DSCategory)

- (UILabel * _Nonnull (^)(NSString * _Nonnull))ds_text {
    return ^id(NSString *text) {
        if (text) {
            self.text = text;
        }else {
            self.text = @"";
        }
        return self;

    };
}

- (UILabel * _Nonnull (^)(UIFont * _Nonnull))ds_font {
    return ^id(UIFont *font) {
        self.font = font;
        return self;
    };
}

- (UILabel * _Nonnull (^)())ds_fontNavTitle {
    return ^id(){
        self.font = [CXShowStyleLib fontWithType:@"KFont_boldLarge"];
        return self;
    };
}

- (UILabel * _Nonnull (^)())ds_fontContent {
    return ^id(){
        self.font = [CXShowStyleLib fontWithType:@"KFont_regularMiddle"];
        return self;
    };
}


- (UILabel * _Nonnull (^)())ds_fontContentSmall {
    return ^id(){
        self.font = [CXShowStyleLib fontWithType:@"KFont_regularSmall"];
        return self;
    };
}

- (UILabel * _Nonnull (^)())ds_fontTitleLarge {
    return ^id(){
        self.font = [CXShowStyleLib fontWithType:@"KFont_mediumLarge"];
        return self;
    };
}

- (UILabel * _Nonnull (^)())ds_fontTitleMiddle {
    return ^id(){
        self.font = [CXShowStyleLib fontWithType:@"KFont_mediumMiddle"];
        return self;
    };
}

- (UILabel * _Nonnull (^)())ds_fontTitleSmall {
    return ^id(){
        self.font = [CXShowStyleLib fontWithType:@"KFont_mediumSmall"];
        return self;
    };
}

- (UILabel *(^)())color_deepText
{
    return ^id(){
        self.textColor= [CXShowStyleLib colorWithType:@"KColor_darkText"];
        return self;
    };
}

- (UILabel * _Nonnull (^)())color_middleText {
    return ^id(){
        self.textColor = [CXShowStyleLib colorWithType:@"KColor_middleText"];
        return self;
    };
}

- (UILabel * _Nonnull (^)())color_lightText {
    return ^id(){
        self.textColor= [CXShowStyleLib colorWithType:@"KColor_lightText"];
        return self;
    };

}


- (UILabel * _Nonnull (^)())ds_fontBlodLarge {
    return ^id(){
        self.font = [CXShowStyleBaseLib fontWithType:@"KFont_boldLarge"];

        return self;
    };
}

- (UILabel * _Nonnull (^)())ds_fontBlodMiddle {
    return ^id(){
        self.font = [CXShowStyleBaseLib fontWithType:@"KFont_boldMiddle"];

        return self;
    };
}

- (UILabel * _Nonnull (^)())ds_fontBlodSmall {
    return ^id(){
        self.font = [CXShowStyleBaseLib fontWithType:@"KFont_boldSmall"];
        return self;
    };
}

- (UILabel * _Nonnull (^)())ds_fontRegularLarge {
    return ^id(){
        self.font = [CXShowStyleBaseLib fontWithType:@"KFont_regularLarge"];

        return self;
    };
}

- (UILabel * _Nonnull (^)())ds_fontRegularMiddle {
    return ^id(){
        self.font = [CXShowStyleBaseLib fontWithType:@"KFont_regularMiddle"];

        return self;
    };
}

- (UILabel * _Nonnull (^)())ds_fontRegularSmall {
    return ^id(){
        self.font = [CXShowStyleBaseLib fontWithType:@"KFont_regularSmall"];

        return self;
    };
}

- (UILabel * _Nonnull (^)())ds_fontMediumLarge {
    return ^id(){
        self.font = [CXShowStyleBaseLib fontWithType:@"KFont_mediumLarge"];

        return self;
    };
}

- (UILabel * _Nonnull (^)())ds_fontMediumMiddle {
    return ^id(){
        self.font = [CXShowStyleBaseLib fontWithType:@"KFont_mediumMiddle"];

        return self;
    };
}

- (UILabel * _Nonnull (^)())ds_fontMediumSmall {
    return ^id(){
        self.font = [CXShowStyleBaseLib fontWithType:@"KFont_mediumSmall"];

        return self;
    };
}

@end


