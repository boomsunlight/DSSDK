//
//  UIImageView+DSCategory.m
//  AiLeXue
//
//  Created by Chen Xiang on 2020/7/21.
//  Copyright © 2020 郑州市方舟教育科技有限公司. All rights reserved.
//

#import <YYWebImage/YYWebImage.h>
#import "UIImageView+DSCategory.h"

#import <objc/runtime.h>
#import "YYAnimatedImageView.h"
#import "YYImage.h"



@implementation UIImageView (DSCategory)

- (void)ds_setImageWithURL:(nullable NSString *)url
          placeholderImage:(nullable NSString *)placeholder {

    [self yy_setImageWithURL:[NSURL URLWithString:url ?: @""]
                 placeholder:[UIImage imageNamed:placeholder ?: @""]];
}

- (void)ds_setImageWithURL:(nullable NSString *)url {
    [self yy_setImageWithURL:[NSURL URLWithString:url ?: @""] placeholder:nil];
}

- (void)ds_setImageProgressiveWithUrl:(nullable NSString *)urlString {
    [self yy_setImageWithURL:[NSURL URLWithString:urlString ?: @""]
                     options:YYWebImageOptionSetImageWithFadeAnimation |
                             YYWebImageOptionProgressiveBlur];
}

-(void)ds_setImageGIfWithUrl:(NSString *)urlString{
    
//    if ([image isKindOfClass:YYImage.class] && ![self isKindOfClass:YYAnimatedImageView.class]) {
//        YYImage *yImage = (YYImage *)image;
//        if (yImage.animatedImageFrameCount<=1) {
//            [self yy_Anim_setImage:image];
//        }else{
//            NSMutableArray *imageList = [NSMutableArray array];
//            NSTimeInterval duration = 0;
//            for (NSInteger i=0; i<yImage.animatedImageFrameCount; i++) {
//                [imageList addObject:[yImage animatedImageFrameAtIndex:i]];
//                duration += [yImage animatedImageDurationAtIndex:i];
//            }
//            UIImage *animatedImg = [UIImage animatedImageWithImages:imageList duration:duration];
//            [self yy_Anim_setImage:animatedImg];
//        }
//    }else{
//        [self yy_Anim_setImage:image];
//    }

}

+(void)load {
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//    Class clazz = objc_getClass("UIImageView")
//    SEL sel1 = @selector(setImage:) ;
//    SEL sel2 = @selector(yy_Anim_setImage:) ;
//    Method origMethod = class_getInstanceMethod(clazz, sel1);
//    Method altMethod = class_getInstanceMethod(clazz, sel2);
//    BOOL didAddMethod = class_addMethod(clazz,sel1,
//                                        method_getImplementation(altMethod),
//                                        method_getTypeEncoding(altMethod));
//
//    if (didAddMethod) {
//        class_replaceMethod(clazz,altSel,
//                            method_getImplementation(origMethod),
//                            method_getTypeEncoding(origMethod));
//    } else {
//        method_exchangeImplementations(origMethod, altMethod);
//    }
//
// });
}

- (UIImageView * (^)(NSString *, NSString *))setImageWithURLAndPlaceHolderImage {
    return ^id(NSString * _Nonnull url, NSString * _Nonnull placeholder){
        [self yy_setImageWithURL:[NSURL URLWithString:url ?: @""]
                     placeholder:[UIImage imageNamed:placeholder ?: @""]];
        return self;
    };
}


@end
