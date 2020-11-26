//
//  CXShowStyleLib.h
//  AiLeXue
//
//  Created by Chen Xiang on 2020/11/2.
//  Copyright © 2020 郑州市金水区大山培训学校有限公司. All rights reserved.
//

#import "CXShowStyleLib.h"
#import "UIColor+DSDark.h"

@interface CXShowStyleLib()
@end

@implementation CXShowStyleLib

+ (CXShowStyleLib *)share {
    static CXShowStyleLib *lib = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        lib = [[self alloc] init];
    });
    return lib;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        // 设置配置文件路径
        NSString * plistPath = [[NSBundle mainBundle] pathForResource:@"DSColor" ofType:@"plist"];
        self.configFilePath = plistPath;
    }
    return self;
}

@end
