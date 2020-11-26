//
//  UILabel+DSCategory.h
//  AiLeXue
//
//  Created by Chen Xiang on 2020/11/4.
//  Copyright © 2020 郑州市金水区大山培训学校有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (DSCategory)

#pragma mark - text
@property (nonatomic,copy,readonly) UILabel* (^ds_text)(NSString *);


#pragma mark - font
@property (nonatomic,copy,readonly) UILabel* (^ds_font)(UIFont *);
@property (nonatomic,copy,readonly) UILabel* (^ds_fontNavTitle)();
@property (nonatomic,copy,readonly) UILabel* (^ds_fontContent)();
@property (nonatomic,copy,readonly) UILabel* (^ds_fontContentSmall)();
@property (nonatomic,copy,readonly) UILabel* (^ds_fontTitleLarge)();
@property (nonatomic,copy,readonly) UILabel* (^ds_fontTitleMiddle)();
@property (nonatomic,copy,readonly) UILabel* (^ds_fontTitleSmall)();



@property (nonatomic,copy,readonly) UILabel* (^ds_fontBlodLarge)();
@property (nonatomic,copy,readonly) UILabel* (^ds_fontBlodMiddle)();
@property (nonatomic,copy,readonly) UILabel* (^ds_fontBlodSmall)();
@property (nonatomic,copy,readonly) UILabel* (^ds_fontRegularLarge)();
@property (nonatomic,copy,readonly) UILabel* (^ds_fontRegularMiddle)();
@property (nonatomic,copy,readonly) UILabel* (^ds_fontRegularSmall)();
@property (nonatomic,copy,readonly) UILabel* (^ds_fontMediumLarge)();
@property (nonatomic,copy,readonly) UILabel* (^ds_fontMediumMiddle)();
@property (nonatomic,copy,readonly) UILabel* (^ds_fontMediumSmall)();

#pragma mark - color
@property (nonatomic,copy,readonly) UILabel* (^color_deepText)();
@property (nonatomic,copy,readonly) UILabel* (^color_middleText)();

@property (nonatomic,copy,readonly) UILabel* (^color_lightText)();

@end


NS_ASSUME_NONNULL_END
