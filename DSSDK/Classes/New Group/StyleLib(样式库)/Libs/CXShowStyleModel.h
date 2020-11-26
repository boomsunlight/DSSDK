//
//  CXShowStyleModel.h
//  AiLeXue
//
//  Created by Chen Xiang on 2020/11/2.
//  Copyright © 2020 郑州市金水区大山培训学校有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
/// 颜色相关的Model
@interface CXShowStyleModel : NSObject
/// name
@property (nonatomic, copy) NSString *name;
/// lightColor
@property (nonatomic, strong) UIColor *lightColor;
/// darkColor
@property (nonatomic, strong) UIColor *darkColor;
/// fontName
@property (nonatomic, copy) NSString *fontName;
/// fontSize
@property (nonatomic, copy) NSString *fontSize;


@end

NS_ASSUME_NONNULL_END
