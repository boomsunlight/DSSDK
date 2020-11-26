//
//  NSString+DSCategory.m
//  AiLeXue
//
//  Created by Chen Xiang on 2020/8/1.
//  Copyright © 2020 郑州市金水区大山培训学校有限公司. All rights reserved.
//

#import "NSString+DSCategory.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (DSCategory)
#pragma mark - Base64
- (NSString *)ds_base64EncodedString{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [data base64EncodedStringWithOptions:0];
}

- (NSString *)ds_base64DecodedString{
    NSData *data = [[NSData alloc]initWithBase64EncodedString:self options:0];
    return [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
}

+ (NSString *)md5:(NSString *)string {
    const char *cStr = [string UTF8String];
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, (CC_LONG)strlen(cStr), digest);
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02X", digest[i]];
    }
    return result;
}

@end
