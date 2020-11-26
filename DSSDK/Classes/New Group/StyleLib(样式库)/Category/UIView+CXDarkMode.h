//
//  UIView+CXDarkMode.h
//  AiLeXue
//
//  Created by Chen Xiang on 2020/11/6.
//  Copyright © 2020 郑州市金水区大山培训学校有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (CXDarkMode)


@property (nonatomic,copy,readonly) UIView* (^color_bg)(void);
@property (nonatomic,copy,readonly) UIView* (^color_secondaryBg)(void);
@property (nonatomic,copy,readonly) UIView* (^color_bgWhite)(void);
@property (nonatomic,copy,readonly) UIView* (^color_bgBlue)(void);
@property (nonatomic,copy,readonly) UIView* (^color_bgGray)(void);



@end

NS_ASSUME_NONNULL_END
