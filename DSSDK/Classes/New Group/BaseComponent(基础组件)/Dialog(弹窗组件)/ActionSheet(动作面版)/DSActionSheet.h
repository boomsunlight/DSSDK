//
//  DSActionSheet.h
//  AiLeXue
//
//  Created by Chen Xiang on 2020/7/18.
//  Copyright © 2020 郑州市方舟教育科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <DSSDK/DSHeader.h>
NS_ASSUME_NONNULL_BEGIN

/**
    DSActionSheet 是底部弹框分别有两个构造方法是一个title的和两个title的如果想多加可以用原生的addAction方法
    弹出方式跟原生一致用present弹出
 *@code
        DSActionSheet *action = [DSActionSheet actionWithTitle:@"1234" handler:^(UIAlertAction * _Nonnull action) {
               DDDLog(@"123");
           } title2:@"123455" handler2:^(UIAlertAction * _Nonnull action) {
               DDDLog(@"567");
           } cancelHandle:^(UIAlertAction * _Nonnull action) {
               DDDLog(@"取消");
           }];
        [self presentViewController:action animated:YES completion:nil];
 @end code
 */
@interface DSActionSheet : UIAlertController

//展示用present展示

///  一个标题
/// @param title title
/// @param handler handle
/// @param cancelHandler 取消handle

+ (instancetype)actionWithTitle:(NSString *)title
                        handler:(void (^__nullable)(UIAlertAction *action))handler
                   cancelHandle:(void (^__nullable)(UIAlertAction *action))cancelHandler CXPastFunc("弃用");


/// 两个标题
/// @param title1 标题1
/// @param handler1 handle1
/// @param title2 标题2
/// @param handler2 handle2
/// @param cancelHandler 取消handle
+ (instancetype)actionWithTitle:(NSString *)title1
                        handler:(void (^__nullable)(UIAlertAction *action))handler1
                         title2:(NSString *)title2
                       handler2:(void (^__nullable)(UIAlertAction *action))handler2
                   cancelHandle:(void (^__nullable)(UIAlertAction *action))cancelHandler;

///多个标题用addAction:[UIAlertAction actionWithTitle:@"取消"
///style:(UIAlertActionStyleCancel)handler
///    :^(UIAlertAction *_Nonnull action)

@end

NS_ASSUME_NONNULL_END
