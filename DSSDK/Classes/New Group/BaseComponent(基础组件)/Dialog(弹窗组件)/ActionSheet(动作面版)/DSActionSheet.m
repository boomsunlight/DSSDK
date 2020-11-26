//
//  DSActionSheet.m
//  AiLeXue
//
//  Created by Chen Xiang on 2020/7/18.
//  Copyright © 2020 郑州市方舟教育科技有限公司. All rights reserved.
//

#import "DSActionSheet.h"
#import <objc/runtime.h>
@interface DSActionSheet ()

@end

@implementation DSActionSheet

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



//+ (void)load {
//    // 只执行一次
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//         classInstanceMethodSwizzle(self.class,
//                                          @selector(addAction:),
//                                          @selector(CXActionBtn_AddAction:),
//                                          nil);
//    });
//
//
//}
 
- (void)CXActionBtn_AddAction:(UIAlertAction *)action {
//    if (self.preferredStyle == UIAlertControllerStyleActionSheet) {
//        UIColor *tempColor = [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1];
//        [action setValue:tempColor forKey:@"_titleTextColor"];
//    }
//    [self CXActionBtn_AddAction:action];
}

+ (instancetype)actionWithTitle:(NSString *)title
                        handler:(void (^_Nullable)(UIAlertAction *_Nonnull))handler
                   cancelHandle:(void (^_Nullable)(UIAlertAction *_Nonnull))cancelHandler {
    // 1.创建一个UIAlertController，注意用类方法创建的形式创建，选择AlertControllerStyle为ActionSheet
    DSActionSheet *sheet =
        [DSActionSheet alertControllerWithTitle:nil
                                        message:nil
                                 preferredStyle:(UIAlertControllerStyleActionSheet)];

    // 2.给 ActionSheet 添加动作，可以在回调的block中写相关代码
    [sheet addAction:[UIAlertAction actionWithTitle:title
                                              style:(UIAlertActionStyleDefault)handler
                                                   :^(UIAlertAction *_Nonnull action) {
                                                     if (handler) {
                                                         handler(action);
                                                     }
                                                   }]];

    // 注意：如果选择UIAlertActionStyleCancel这个款式，则该action是取消按钮，独立于其它的action。而其他的action都是黏在一起的。
    [sheet addAction:[UIAlertAction actionWithTitle:@"取消"
                                              style:(UIAlertActionStyleCancel)handler
                                                   :^(UIAlertAction *_Nonnull action) {
                                                     if (cancelHandler) {
                                                         cancelHandler(action);
                                                     }
                                                   }]];
    return sheet;
}

+ (instancetype)actionWithTitle:(NSString *)title1
                        handler:(void (^)(UIAlertAction *_Nonnull))handler1
                         title2:(NSString *)title2
                       handler2:(void (^)(UIAlertAction *_Nonnull))handler2
                   cancelHandle:(void (^)(UIAlertAction *_Nonnull))cancelHandler {
    // 1.创建一个UIAlertController，注意用类方法创建的形式创建，选择AlertControllerStyle为ActionSheet
    DSActionSheet *sheet =
        [DSActionSheet alertControllerWithTitle:nil
                                        message:nil
                                 preferredStyle:(UIAlertControllerStyleActionSheet)];

    // 2.给 ActionSheet 添加动作，可以在回调的block中写相关代码
    [sheet addAction:[UIAlertAction actionWithTitle:title1
                                              style:(UIAlertActionStyleDefault)handler
                                                   :^(UIAlertAction *_Nonnull action) {
                                                     if (handler1) {
                                                         handler1(action);
                                                     }
                                                   }]];
    
    // 2.给 ActionSheet 添加动作，可以在回调的block中写相关代码
    [sheet addAction:[UIAlertAction actionWithTitle:title2
                                              style:(UIAlertActionStyleDefault)handler
                                                   :^(UIAlertAction *_Nonnull action) {
                                                     if (handler2) {
                                                         handler2(action);
                                                     }
                                                   }]];

    // 注意：如果选择UIAlertActionStyleCancel这个款式，则该action是取消按钮，独立于其它的action。而其他的action都是黏在一起的。
    [sheet addAction:[UIAlertAction actionWithTitle:@"取消"
                                              style:(UIAlertActionStyleCancel)handler
                                                   :^(UIAlertAction *_Nonnull action) {
                                                     if (cancelHandler) {
                                                         cancelHandler(action);
                                                     }
                                                   }]];
    return sheet;
}


/**
 * class : 替换方法的类
 * originalSelector : 原始方法SEL
 * swizzledSelector : 用于交换的SEL
 * noneSelector : 原方法SEL对应IMP不存在的时候用的SEL
**/
void classInstanceMethodSwizzle(Class class, SEL originalSelector, SEL swizzledSelector,SEL noneSelector)
{
    Method originalMethod = class_getInstanceMethod(class, originalSelector);
    Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
    Method noneMethod = class_getInstanceMethod(class, noneSelector);
    //已经交换过了
    if (method_getImplementation(originalMethod) == method_getImplementation(swizzledMethod)) {
        return;
    }
    
    BOOL originMethodExist = originalMethod != nil;
    //源方法不存在就直接添加noneSEL对应的IMP
    if (!originMethodExist&&noneMethod) {
            class_addMethod(class, originalSelector, method_getImplementation(noneMethod), method_getTypeEncoding(noneMethod));
        return;
    }
    
    BOOL didAddMethod = class_addMethod(class, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
    if (didAddMethod) {
        //当前类不存在originalSelector而父类存在的时候didAddMethod为YES，避免影响父类的相关方法功能走replaceMethod
        class_replaceMethod(class, swizzledSelector, method_getImplementation(originalMethod),method_getTypeEncoding(originalMethod));
    } else {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}

@end
