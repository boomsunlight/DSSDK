//
//  DSShowCoverageManager.m
//  AiLeXue
//
//  Created by Chen Xiang on 2020/11/2.
//  Copyright © 2020 郑州市金水区大山培训学校有限公司. All rights reserved.
//

#import "CXShowCoverageManager.h"
#import <DSSDK/DSHeader.h>
@implementation CXShowCoverageManager

/// 在所有页面之上展示一层阴影
+ (void)showCoverage {
    UIWindow *window = [UIApplication sharedApplication].delegate.window;
    UIView *coverageView = [window viewWithTag:-999];
    if (!coverageView) {
        coverageView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.height)];
        coverageView.backgroundColor = cx_colorFromRGBAlpha(0x000000, 0.5);
        coverageView.tag = -999;
        // 保证显示在最上面
        coverageView.layer.zPosition = 9999;
        coverageView.userInteractionEnabled = NO;
        [window addSubview:coverageView];
    } else {
        coverageView.hidden = NO;
    }
}

/// 隐藏最上层展示的阴影
+ (void)hiddenCoverage {
    UIWindow *window = [UIApplication sharedApplication].delegate.window;
    UIView *coverageView = [window viewWithTag:-999];
    coverageView.hidden = YES;
}

@end
