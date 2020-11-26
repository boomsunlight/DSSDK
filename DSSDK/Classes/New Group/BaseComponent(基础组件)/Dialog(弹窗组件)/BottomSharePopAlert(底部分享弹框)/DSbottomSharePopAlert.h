//
//  DSbottomSharePopAlert.h
//  AiLeXue
//
//  Created by songyu on 2020/7/17.
//  Copyright © 2020 郑州市方舟教育科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DSbottomSharePopAlert : UIViewController

@property (nonatomic,copy) void(^selectCallBack)(NSInteger index);

@property(nonatomic,strong)NSMutableArray *contentArray;


@end

NS_ASSUME_NONNULL_END
