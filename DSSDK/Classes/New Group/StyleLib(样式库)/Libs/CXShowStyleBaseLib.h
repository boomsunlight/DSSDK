//
//  CXShowStyleBaseLib.h
//  AiLeXue
//
//  Created by Chen Xiang on 2020/11/2.
//  Copyright © 2020 郑州市金水区大山培训学校有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CXShowStyleModel.h"
/// UIUserInterfaceStyle 对应的转化枚举
typedef NS_ENUM(NSInteger, CXUserInterfaceStyle) {
    CXUserInterfaceStyleUnspecified,   // unspecified模式
    CXUserInterfaceStyleLight,         // light模式
    CXIUserInterfaceStyleDark           // dark模式
};

NS_ASSUME_NONNULL_BEGIN

/// 适配暗黑模式的工具父类
@interface CXShowStyleBaseLib : NSObject

/// 颜色配置文件路径
@property (nonatomic, strong) NSString *configFilePath;

/// 通过类型获取color
/// @param typeStr 对应相关配置plist中的颜色配置
+ (UIColor *)colorWithType:(NSString *)typeStr;

/// 通过类型获取font
/// @param typeStr 对应相关配置plist中的font配置
+ (UIFont *)fontWithType:(NSString *)typeStr;

/// 获取配置文件中的颜色对象
/// @param typeStr typeStr
+ (CXShowStyleModel *)getShowStyleModelWithType:(NSString *)typeStr;

@end

NS_ASSUME_NONNULL_END
