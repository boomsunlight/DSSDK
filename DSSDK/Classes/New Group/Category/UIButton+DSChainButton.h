//
//  UIButton+DSChainButton.h
//  iPhoneTeacher
//
//  Created by Chen Xiang on 2020/11/24.
//  Copyright © 2020 dashan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void (^DSButtonPressBlk)(void);

@interface UIView (DSChainButton)
@property (nonatomic,copy,readonly) UIButton* (^init_custom)(void);
@property (nonatomic,copy,readonly) UIButton* (^color_title_state)(UIColor *titleColro,UIControlState controlState);
@property (nonatomic,copy,readonly) UIButton* (^image_bgImg_state)(UIImage *img,UIControlState controlState);
@property (nonatomic,copy,readonly) UIButton* (^title_state)(NSString *title,UIControlState controlState);
@property (nonatomic,copy,readonly) UIButton* (^font_titleLabelFont)(UIFont *font);
@property (nonatomic,copy,readonly) UIButton* (^target_event_blk)(id target,UIControlEvents event,DSButtonPressBlk pressBlk);



@end

NS_ASSUME_NONNULL_END
