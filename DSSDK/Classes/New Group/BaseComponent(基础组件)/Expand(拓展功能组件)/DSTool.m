//
//  DSTool.m
//  AiLeXue
//
//  Created by Chen Xiang on 2020/8/6.
//  Copyright © 2020 郑州市金水区大山培训学校有限公司. All rights reserved.
//

#import "DSTool.h"

@implementation DSTool

+ (UIViewController *)str_stringIntoVC:(NSString *)classStr {
    UIViewController *vc = [NSClassFromString(classStr) new];
    return vc;
}

+ (NSData *)dataWithJSONObject:(id)obj options:(NSJSONWritingOptions)opt error:(NSError **)error {
    if (obj) {
        return [NSJSONSerialization dataWithJSONObject:obj options:opt error:error];
    } else {
        return [NSData new];
        ;
    }
}

+ (NSData *)jsonWithObj:(id)obj {
    if (obj) {
        NSError *error = [NSError new];
        return [NSJSONSerialization dataWithJSONObject:obj
                                               options:NSJSONWritingPrettyPrinted
                                                 error:&error];
    } else {
        return [NSData new];
    }
}

+ (id)str_convertToJsonData:(NSDictionary *)dict {
    if ([dict isKindOfClass:[NSDictionary class]]) {
        NSError *error;
        NSData *jsonData = [DSTool dataWithJSONObject:dict
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

@end
