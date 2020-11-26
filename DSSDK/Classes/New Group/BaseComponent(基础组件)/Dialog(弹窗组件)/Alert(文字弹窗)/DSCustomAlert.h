//
//  DSCustomAlert.h
//  AiLeXue
//
//  Created by Chen Xiang on 2020/7/16.
//  Copyright © 2020 郑州市方舟教育科技有限公司. All rights reserved.
//  自定义的输入框弹框

#import <UIKit/UIKit.h>

typedef void (^DSCustomAlertBlk)(void);

NS_ASSUME_NONNULL_BEGIN

/// 自定义的警示标题双按钮弹框 与原生风格基本一致
@interface DSCustomAlert : UIViewController
/** 左侧辅助按钮 */
@property (weak, nonatomic) IBOutlet UIButton *leftBtn;
/** 右侧主操作按钮 */
@property (weak, nonatomic) IBOutlet UIButton *rightBtn;
/** 给朋友留言 */
@property (weak, nonatomic) IBOutlet UITextField *messageTextField;
/** 内容label */
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
/** 标题label */
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (nonatomic, copy) DSCustomAlertBlk leftBtnBlk;
@property (nonatomic, copy) DSCustomAlertBlk rightBtnBlk;

@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSString *content;
@property (nonatomic, copy) NSString *message;
@property (nonatomic, copy) NSString *leftBtnTitle;
@property (nonatomic, copy) NSString *rightBtnTitle;

/// 弹框
/// @param title 标题 必填
/// @param content 内容 必填
/// @param message 留言框可输入 非必填 不填 不展示留言框
/// @param leftBtnTitle 左侧按钮的标题 非必填 不填不显示左侧按钮 只显示一个按钮 居中
/// @param rightBtnTitle 右侧按钮的标题 必填
/// @param leftBtnBlk 点击左侧按钮的blk
/// @param rightBtnBlk 点击右侧按钮的blk
+ (instancetype)alertShowWithTitle:(nonnull NSString *)title
                           content:(nonnull NSString *)content
                           message:(NSString *)message
                      leftBtnTitle:(NSString *)leftBtnTitle
                     rightBtnTitle:(nonnull NSString *)rightBtnTitle
                      leftBtnPress:(DSCustomAlertBlk)leftBtnBlk
                     rightBtnPress:(DSCustomAlertBlk)rightBtnBlk;

@end

NS_ASSUME_NONNULL_END
