//
//  UIFont+DSCategory.h
//  AiLeXue
//
//  Created by Chen Xiang on 2020/11/7.
//  Copyright © 2020 郑州市金水区大山培训学校有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIFont (DSCategory)

@property (nonatomic,copy,readonly) UIFont* (^ds_fontBlodLarge)();
@property (nonatomic,copy,readonly) UIFont* (^ds_fontBlodMiddle)();
@property (nonatomic,copy,readonly) UIFont* (^ds_fontBlodSmall)();
@property (nonatomic,copy,readonly) UIFont* (^ds_fontRegularLarge)();
@property (nonatomic,copy,readonly) UIFont* (^ds_fontRegularMiddle)();
@property (nonatomic,copy,readonly) UIFont* (^ds_fontRegularSmall)();
@property (nonatomic,copy,readonly) UIFont* (^ds_fontMediumLarge)();
@property (nonatomic,copy,readonly) UIFont* (^ds_fontMediumMiddle)();
@property (nonatomic,copy,readonly) UIFont* (^ds_fontMediumSmall)();
+ (UIFont *)ds_fontRegularSmall;

@end

NS_ASSUME_NONNULL_END
