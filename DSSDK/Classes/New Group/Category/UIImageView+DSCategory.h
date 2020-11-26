//
//  UIImageView+DSCategory.h
//  AiLeXue
//
//  Created by Chen Xiang on 2020/7/21.
//  Copyright © 2020 郑州市方舟教育科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (DSCategory)
/*
用指定的URL设置视图的“image”。

@param 图像urlStr。
@param 占位符初始设置的图像
*/
- (void)ds_setImageWithURL:(nullable NSString *)url
          placeholderImage:(nullable NSString *)placeholder;

/// 用指定的URL设置视图的“image”。
/// @param url url
- (void)ds_setImageWithURL:(nullable NSString *)url;

- (void)ds_setImageProgressiveWithUrl:(nullable NSString *)urlString;


- (void)ds_setImageGIfWithUrl:(nullable NSString *)urlString;


@property (nonatomic,copy,readonly) UIImageView* (^setImageWithURLAndPlaceHolderImage)(NSString *url,NSString * placeholder);


@end

NS_ASSUME_NONNULL_END
