//
//  UIButton+DSChainButton.m
//  iPhoneTeacher
//
//  Created by Chen Xiang on 2020/11/24.
//  Copyright © 2020 dashan. All rights reserved.
//

#import "UIButton+DSChainButton.h"
#import <objc/runtime.h>

#define TTT  if(![self isKindOfClass:[UIButton class]]){return self;}
static char overviewKey;


@implementation UIView (DSChainButton)


- (UIButton * _Nonnull (^)(void))init_custom {
    return ^id() {TTT
        return [UIButton buttonWithType:UIButtonTypeCustom];
    };
}

- (UIButton * _Nonnull (^)(UIColor * _Nonnull, UIControlState))color_title_state {
    return ^id(UIColor *titleColor,UIControlState controlState){TTT
        [(UIButton*)self setTitleColor:titleColor forState:controlState];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIImage * _Nonnull, UIControlState))image_bgImg_state {
    return ^id(UIImage *bgImg,UIControlState controlState){TTT
        [(UIButton *)self setBackgroundImage:bgImg forState:controlState];
        return self;
    };
}

- (UIButton * _Nonnull (^)(NSString * _Nonnull, UIControlState))title_state {
    return ^id(NSString *title,UIControlState controlState){TTT
        [(UIButton *)self setTitle:title forState:controlState];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIFont * _Nonnull))font_titleLabelFont {
    return ^id(UIFont *font) {TTT
        ((UIButton *)self).titleLabel.font = font;
        return self;
    };
}

- (UIButton * _Nonnull (^)(id target,UIControlEvents, DSButtonPressBlk _Nonnull))target_event_blk {
    return ^id(id target,UIControlEvents event,DSButtonPressBlk pressBlk){TTT
        [((UIButton *)self) removeTarget:target action:@selector(mcx_callActionBlock:) forControlEvents:event];
        objc_setAssociatedObject(self, &overviewKey, pressBlk, OBJC_ASSOCIATION_COPY_NONATOMIC);
        [((UIButton *)self) addTarget:target action:@selector(mcx_callActionBlock:) forControlEvents:event];
        return self;
    };
}

- (void)mcx_callActionBlock:(id)mcxder {
    ((UIButton *)self).enabled = NO;
    DSButtonPressBlk block = (DSButtonPressBlk)objc_getAssociatedObject(self, &overviewKey);
    if (block) {
        block();
    }
    ((UIButton *)self).enabled = YES;
}


@end
