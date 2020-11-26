//
//  UIView+DSCategory.m
//  AiLeXue
//
//  Created by Chen Xiang on 2020/8/25.
//  Copyright © 2020 郑州市金水区大山培训学校有限公司. All rights reserved.
//


#import "UIView+DSCategory.h"
#import <objc/runtime.h>

@implementation UIView (DSCategory)

- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}


- (UIView * _Nonnull (^)(CGRect rect))view_frame {
    return ^id(CGRect rect) {
        self.frame = rect;
        return self;
    };
}

- (UIView * _Nonnull (^)(CGFloat))layer_cornerRadius {
    return ^id(CGFloat cornerRadius){
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}

- (UIView * _Nonnull (^)(BOOL))layer_masksToBounds {
    return ^id(BOOL masksToBounds) {
        self.layer.masksToBounds = masksToBounds;
        return self;
    };
}

@end
