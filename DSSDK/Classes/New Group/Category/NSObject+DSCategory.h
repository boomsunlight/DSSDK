//
//  NSObject+DSCategory.h
//  AiLeXue
//
//  Created by Chen Xiang on 2020/11/6.
//  Copyright © 2020 郑州市金水区大山培训学校有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (DSCategory)

@property (nonatomic,copy,readonly) NSObject* (^log)(void);

@end

NS_ASSUME_NONNULL_END
