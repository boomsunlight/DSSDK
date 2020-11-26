//
//  NSString+DSCategory.h
//  AiLeXue
//
//  Created by Chen Xiang on 2020/8/1.
//  Copyright © 2020 郑州市金水区大山培训学校有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (DSCategory)
#pragma mark - Base64
/**
 *  转换为Base64编码
 */
- (NSString *)ds_base64EncodedString;
/**
 *  将Base64编码还原
 */
- (NSString *)ds_base64DecodedString;

+ (NSString *)md5:(NSString *)string;



@end

NS_ASSUME_NONNULL_END
