//
//  DSTool.h
//  AiLeXue
//
//  Created by Chen Xiang on 2020/8/6.
//  Copyright © 2020 郑州市金水区大山培训学校有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/// 拓展功能工具
@interface DSTool : NSObject

#pragma mark - 字符串相关
/// 将字符串转化成视图控制器
/// @param classStr 类字符串
+ (UIViewController *)str_stringIntoVC:(NSString *)classStr;

//获取当前时间
+ (NSString *)str_currentTime;
+ (NSString *)str_currentNumberTime;

/// 字典转json字符串
/// @param dict 字典，如果传入非字典，则返回自身
+ (id)str_convertToJsonData:(NSDictionary *)dict;

#pragma mark - 类系统方法
+ (NSData *)dataWithJSONObject:(id)obj options:(NSJSONWritingOptions)opt error:(NSError **)error;

+ (NSData *)jsonWithObj:(id)obj;


@end

NS_ASSUME_NONNULL_END
