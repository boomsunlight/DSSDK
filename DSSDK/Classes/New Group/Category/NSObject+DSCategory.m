//
//  NSObject+DSCategory.m
//  AiLeXue
//
//  Created by Chen Xiang on 2020/11/6.
//  Copyright © 2020 郑州市金水区大山培训学校有限公司. All rights reserved.
//

#import "NSObject+DSCategory.h"
#import "ChainBlockDefine.h"
@implementation NSObject (DSCategory)

- (NSObject *(^)(void))log
{
    return ^id(){
#ifdef DEBUG
        NSLog(@"%@",self);
#endif

        return self;
    };
}

@end
