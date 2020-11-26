//
//  UIImage+DSCategory.h
//  AiLeXue
//
//  Created by Chen Xiang on 2020/7/21.
//  Copyright © 2020 郑州市方舟教育科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/// 图片处理
@interface UIImage (DSCategory)


+ (UIImage *)ds_imageNamed:(NSString *)name;

/// 纯色图片
+ (nullable UIImage *)imageWithColor:(UIColor *)color;

/// 缩放
+ (nullable UIImage *)resizeImage:(UIImage *)image toSize:(CGSize)size;

/// 裁剪
+ (nullable UIImage *)cropImage:(UIImage *)image toRect:(CGRect)rect;

/// 加内边框
+ (nullable UIImage *)addBorderToImage:(UIImage *)image
                         withInsetEdge:(UIEdgeInsets)insets
                              andColor:(nullable UIColor *)color;

/// 加圆角；不要用imageView.layer.cornerRadius，性能低
+ (nullable UIImage *)addRoundCornerToImage:(UIImage *)image withRadius:(CGFloat)radius;

/// 加圆形边框
+ (nullable UIImage *)addRoundBorderToImage:(UIImage *)image
                                 withRadius:(CGFloat)radius
                                      width:(CGFloat)width
                                   andColor:(nullable UIColor *)color;

/// 旋转
+ (nullable UIImage *)rotateImage:(UIImage *)image withDegree:(CGFloat)degree;

/// ⤺
+ (nullable UIImage *)rotateLeft90:(UIImage *)image;

/// ⤼
+ (nullable UIImage *)rotateRight90:(UIImage *)image;

/// ↻
+ (nullable UIImage *)rotate180:(UIImage *)image;

/// ⥯
+ (nullable UIImage *)flipVertical:(UIImage *)image;

/// ⇋
+ (nullable UIImage *)flipHorizontal:(UIImage *)image;

@end

NS_ASSUME_NONNULL_END
