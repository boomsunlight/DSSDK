//
//  UIFont+DSCategory.m
//  AiLeXue
//
//  Created by Chen Xiang on 2020/11/7.
//  Copyright © 2020 郑州市金水区大山培训学校有限公司. All rights reserved.
//

#import "UIFont+DSCategory.h"
#import <DSSDK/CXShowStyleBaseLib.h>
@implementation UIFont (DSCategory)

- (UIFont * _Nonnull (^)())ds_fontBlodLarge {
    return ^id(){
        return [CXShowStyleBaseLib fontWithType:@"KFont_boldLarge"];
    };
}

- (UIFont * _Nonnull (^)())ds_fontBlodMiddle {
    return ^id(){
        return [CXShowStyleBaseLib fontWithType:@"KFont_boldMiddle"];
    };
}

- (UIFont * _Nonnull (^)())ds_fontBlodSmall {
    return ^id(){
        return [CXShowStyleBaseLib fontWithType:@"KFont_boldSmall"];
    };
}

- (UIFont * _Nonnull (^)())ds_fontRegularLarge {
    return ^id(){
        return [CXShowStyleBaseLib fontWithType:@"KFont_regularLarge"];
    };
}

- (UIFont * _Nonnull (^)())ds_fontRegularMiddle {
    return ^id(){
        return [CXShowStyleBaseLib fontWithType:@"KFont_regularMiddle"];
    };
}

- (UIFont * _Nonnull (^)())ds_fontRegularSmall {
    return ^id(){
        return [CXShowStyleBaseLib fontWithType:@"KFont_regularSmall"];
    };
}

- (UIFont * _Nonnull (^)())ds_fontMediumLarge {
    return ^id(){
        return [CXShowStyleBaseLib fontWithType:@"KFont_mediumLarge"];
    };
}

- (UIFont * _Nonnull (^)())ds_fontMediumMiddle {
    return ^id(){
        return [CXShowStyleBaseLib fontWithType:@"KFont_mediumMiddle"];
    };
}

- (UIFont * _Nonnull (^)())ds_fontMediumSmall {
    return ^id(){
        return [CXShowStyleBaseLib fontWithType:@"KFont_mediumSmall"];
    };
}


+ (UIFont *)ds_fontRegularSmall {
    return [CXShowStyleBaseLib fontWithType:@"KFont_regularSmall"];
}

@end
