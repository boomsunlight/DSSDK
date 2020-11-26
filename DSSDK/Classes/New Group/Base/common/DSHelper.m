//
//  DSHelper.m
//  iPhoneTeacher
//
//  Created by Chen Xiang on 2020/11/16.
//  Copyright © 2020 dashan. All rights reserved.
//

#import "DSHelper.h"

@implementation DSHelper

+ (id)str_convertToJsonData:(NSDictionary *)dict {
    if ([dict isKindOfClass:[NSDictionary class]]) {
        NSError *error;
        NSData *jsonData = [DSHelper dataWithJSONObject:dict
                                              options:NSJSONWritingPrettyPrinted
                                                error:&error];
        NSString *jsonString;
        if (!jsonData) {
        } else {
            jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        }
        NSMutableString *mutStr = [NSMutableString stringWithString:jsonString];
        NSRange range = {0, jsonString.length};
        //去掉字符串中的空格
        [mutStr replaceOccurrencesOfString:@" " withString:@"" options:NSLiteralSearch range:range];
        NSRange range2 = {0, mutStr.length};
        //去掉字符串中的换行符
        [mutStr replaceOccurrencesOfString:@"\n" withString:@"" options:NSLiteralSearch range:range2];
        return mutStr;
    }else {
        return dict;
    }

}


+ (NSData *)dataWithJSONObject:(id)obj options:(NSJSONWritingOptions)opt error:(NSError **)error {
    if (obj) {
        return [NSJSONSerialization dataWithJSONObject:obj options:opt error:error];
    } else {
        return [NSData new];
        ;
    }
}


/*
  注册客户端注册端1,安卓2,ios3,ipad4,pc5,手机站
  注意：这里面么有涉到ipod设备，默认是是手机端 这个不能单独作为判断设备的依据
 */
+(NSString *)getDeveicedStr{
    NSString *deviceType = [UIDevice currentDevice].model;
    if([deviceType isEqualToString:@"iPhone"]) {
        //iPhone
        return @"2";
    }
    else if([deviceType isEqualToString:@"iPod touch"]) {
        //iPod Touch
        return @"2";
    }
    else if([deviceType isEqualToString:@"iPad"]) {
        //iPad
        return @"3";
    }
    return nil;
}


@end
