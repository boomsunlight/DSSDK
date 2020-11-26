//
//  DSTextShowToast.h
//  AiLeXue
//
//  Created by songyu on 2020/7/17.
//  Copyright © 2020 郑州市方舟教育科技有限公司. All rights reserved.
//

/*
  toast是在windows上的，最多是文字提示是两行
  
 
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "DSHeader.h"
NS_ASSUME_NONNULL_BEGIN

@interface DSTextShowToast : NSObject

#pragma mark-中间显示
/**
*  中间显示
*
*  @param text 内容
*/
+ (void)showCenterWithText:(NSString *)text;
#pragma mark-中间显示
/**
*  中间显示图片和文字
*
*  @param text 内容
*/
+ (void)showCenterWithText:(NSString *)text andWithImage:(NSString *)ImageStr;
/**
 *  中间显示+自定义停留时间
 *
 *  @param text     内容
 *  @param duration 停留时间
 */
+ (void)showCenterWithText:(NSString *)text duration:(CGFloat)duration CXPastFunc("产品说现在不使用，不要找刺激");

#pragma mark-上方显示
/**
 *  上方显示
 *
 *  @param text 内容
 */
+ (void)showTopWithText:(NSString *)text CXPastFunc("产品说现在不使用，不要找刺激");
/**
 *  上方显示+自定义停留时间
 *
 *  @param text     内容
 *  @param duration 停留时间
 */
+ (void)showTopWithText:(NSString *)text duration:(CGFloat)duration CXPastFunc("产品说现在不使用，不要找刺激");
/**
 *  上方显示+自定义距顶端距离
 *
 *  @param text      内容
 *  @param topOffset 到顶端距离
 */
+ (void)showTopWithText:(NSString *)text topOffset:(CGFloat)topOffset CXPastFunc("产品说现在不使用，不要找刺激");
/**
 *  上方显示+自定义距顶端距离+自定义停留时间
 *
 *  @param text      内容
 *  @param topOffset 到顶端距离
 *  @param duration  停留时间
 */
+ (void)showTopWithText:(NSString *)text topOffset:(CGFloat)topOffset duration:(CGFloat)duration CXPastFunc("产品说现在不使用，不要找刺激");

#pragma mark-下方显示
/**
 *  下方显示
 *
 *  @param text 内容
 */
+ (void)showBottomWithText:(NSString *)text CXPastFunc("产品说现在不使用，不要找刺激");
/**
 *  下方显示+自定义停留时间
 *
 *  @param text     内容
 *  @param duration 停留时间
 */
+ (void)showBottomWithText:(NSString *)text duration:(CGFloat)duration CXPastFunc("产品说现在不使用，不要找刺激");
/**
 *  下方显示+自定义距底端距离u
 *
 *  @param text         内容
 *  @param bottomOffset 距底端距离
 */
+ (void)showBottomWithText:(NSString *)text bottomOffset:(CGFloat)bottomOffset CXPastFunc("产品说现在不使用，不要找刺激");
/**
 *  下方显示+自定义距底端距离+自定义停留时间
 *
 *  @param text         内容
 *  @param bottomOffset 距底端距离
 *  @param duration     停留时间
 */
+ (void)showBottomWithText:(NSString *)text bottomOffset:(CGFloat)bottomOffset duration:(CGFloat)duration CXPastFunc("产品说现在不使用，不要找刺激");


- (id)initWithText:(NSString *)text;
- (void)setDuration:(CGFloat)duration;
- (void)show;
@property (nonatomic, strong) UILabel *textLabel;
@end

NS_ASSUME_NONNULL_END
