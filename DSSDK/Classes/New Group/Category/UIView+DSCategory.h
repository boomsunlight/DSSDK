//
//  UIView+DSCategory.h
//  AiLeXue
//
//  Created by Chen Xiang on 2020/8/25.
//  Copyright © 2020 郑州市金水区大山培训学校有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (DSCategory)

@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;


@property (nonatomic,copy,readonly) UIView* (^view_frame)(CGRect rect);
@property (nonatomic,copy,readonly) UIView* (^layer_cornerRadius)(CGFloat);
@property (nonatomic,copy,readonly) UIView* (^layer_masksToBounds)(BOOL);


@end

NS_ASSUME_NONNULL_END
