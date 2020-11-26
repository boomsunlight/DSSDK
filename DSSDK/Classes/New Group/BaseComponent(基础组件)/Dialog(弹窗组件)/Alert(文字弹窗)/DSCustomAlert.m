//
//  DSCustomAlert.m
//  AiLeXue
//
//  Created by Chen Xiang on 2020/7/16.
//  Copyright © 2020 郑州市方舟教育科技有限公司. All rights reserved.
//  自定义的输入框弹框

#import "DSCustomAlert.h"
#import <DSSDK/UILabel+DSCategory.h>

@interface DSCustomAlert ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *messageHeightCons;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lineTopCons;
@property (weak, nonatomic) IBOutlet UIView *messageView;
@property (weak, nonatomic) IBOutlet UIView *lineVIew;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lineCentCons;

@end

@implementation DSCustomAlert

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setup];
    
}

- (void)setup {
    self.titleLabel.text = self.text;
    self.contentLabel.text = self.content;
    if (!self.message) {
        self.messageHeightCons.constant = 0;
        self.messageView.hidden = YES;
        self.lineTopCons.constant = 0;
    } else {
        self.messageTextField.placeholder = self.message;
    }
    if (!_leftBtnTitle) {
        self.leftBtn.hidden = YES;
        self.lineVIew.hidden = YES;
        self.lineCentCons.constant = -124;
    } else {
        [self.leftBtn setTitle:_leftBtnTitle forState:0];
    }
    [self.rightBtn setTitle:_rightBtnTitle forState:0];
    self.titleLabel.color_deepText();
//    self.contentLabel.textColor = [UIColor dswy_colorWithLightColor:[UIColor dswy_666Color] DarkColor:[UIColor whiteColor]];
    self.contentLabel.color_middleText();
}

#pragma mark - action

- (IBAction)leftBtnPress:(UIButton *)sender {
    if (_leftBtnBlk) {
        self.leftBtnBlk();
    }
    [self dismissViewControllerAnimated:NO completion:nil];
}

- (IBAction)rightBtnPress:(UIButton *)sender {
    
    if (_rightBtnBlk) {
        self.rightBtnBlk();
    }
    [self dismissViewControllerAnimated:NO completion:nil];
    
}

+ (instancetype)alertShowWithTitle:(NSString *)title
                           content:(NSString *)content
                           message:(NSString *)message
                      leftBtnTitle:(NSString *)leftBtnTitle
                     rightBtnTitle:(NSString *)rightBtnTitle
                      leftBtnPress:(DSCustomAlertBlk)leftBtnBlk
                     rightBtnPress:(DSCustomAlertBlk)rightBtnBlk {
    DSCustomAlert *alert = [[DSCustomAlert alloc] init];
    alert.modalPresentationStyle = UIModalPresentationOverFullScreen;
    alert.text = title;
    alert.content = content;
    alert.message = message;
    alert.rightBtnBlk = rightBtnBlk;
    alert.leftBtnBlk = leftBtnBlk;
    alert.leftBtnTitle = leftBtnTitle;
    alert.rightBtnTitle = rightBtnTitle;
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alert
                                                                                 animated:NO
                                                                               completion:nil];
    return alert;
}

+ (instancetype)alertWithTitle:(NSString *)title content:(NSString *)content {
    DSCustomAlert *alert = [[DSCustomAlert alloc] init];
    alert.modalPresentationStyle = UIModalPresentationOverFullScreen;
    alert.text = title;
    alert.content = content;
    return alert;
}

+ (instancetype)alertWithTitle:(NSString *)title
                       content:(NSString *)content
                       message:(nullable NSString *)message {
    DSCustomAlert *alert = [[DSCustomAlert alloc] init];
    alert.modalPresentationStyle = UIModalPresentationOverFullScreen;
    alert.text = title;
    alert.content = content;
    alert.message = message;
    return alert;
}

- (void)showWithCotroller:(UIViewController *)controller {
    [controller presentViewController:self animated:NO completion:nil];
}

@end
