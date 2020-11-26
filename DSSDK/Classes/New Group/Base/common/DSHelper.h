//
//  DSHelper.h
//  iPhoneTeacher
//
//  Created by Chen Xiang on 2020/11/16.
//  Copyright © 2020 dashan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DSHelper : NSObject
/// 字典转json字符串
/// @param dict 字典，如果传入非字典，则返回自身
+ (id)str_convertToJsonData:(NSDictionary *)dict;

/*
  注册客户端注册端1,安卓2,ios3,ipad4,pc5,手机站
  注意：这里面么有涉到ipod设备，默认是是手机端 这个不能单独作为判断设备的依据
 */
+(NSString *)getDeveicedStr;

+ (NSData *)dataWithJSONObject:(id)obj options:(NSJSONWritingOptions)opt error:(NSError **)error;

@end

NS_ASSUME_NONNULL_END
