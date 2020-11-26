//
//  DSTextShowToast.m
//  AiLeXue
//
//  Created by songyu on 2020/7/17.
//  Copyright © 2020 郑州市方舟教育科技有限公司. All rights reserved.
//

#import "DSTextShowToast.h"

//Toast默认停留时间
#define ToastDispalyDuration 1.5f
//Toast到顶端/底端默认距离
#define ToastSpace 150.0f
//Toast背景颜色
#define ToastBackgroundColor [UIColor colorWithRed:0 green:0 blue:0 alpha:1]

@interface DSTextShowToast ()
{
    UIButton *_contentView;
    CGFloat  _duration;
}
@end
@implementation DSTextShowToast
- (void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIDeviceOrientationDidChangeNotification object:[UIDevice currentDevice]];
}

- (id)initWithText:(NSString *)text{
    if (self = [super init]) {
        UIFont *font = [UIFont fontWithName:@"PingFangSC-Medium" size:14];
        NSDictionary * dict=[NSDictionary dictionaryWithObject: font forKey:NSFontAttributeName];
        CGRect rect=[text boundingRectWithSize:CGSizeMake(250,CGFLOAT_MAX) options:NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil];
        UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 5,rect.size.width + 40, rect.size.height+20)];
        textLabel.backgroundColor = [UIColor clearColor];
        textLabel.textColor = [UIColor whiteColor];
        textLabel.textAlignment = NSTextAlignmentCenter;
        textLabel.numberOfLines = 2;
        textLabel.font = font;
        textLabel.text = text;
        textLabel.numberOfLines = 0;
        _textLabel  = textLabel;
        _contentView = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, textLabel.frame.size.width+20, textLabel.frame.size.height+10)];
        _contentView.layer.cornerRadius = 8.0f;
        _contentView.backgroundColor = ToastBackgroundColor;
        [_contentView addSubview:textLabel];
        _contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        [_contentView addTarget:self action:@selector(toastTaped:) forControlEvents:UIControlEventTouchDown];
        _contentView.alpha = 0.0f;
        _duration = ToastDispalyDuration;
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(deviceOrientationDidChanged:) name:UIDeviceOrientationDidChangeNotification object:[UIDevice currentDevice]];
    }
    return self;
}

#pragma mark-中间显示view显示图片和文字
- (id)initWithText:(NSString *)text andImageWithImageStr:(NSString *)ImageStr{
   if (self = [super init]) {
       
       UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake((120-48)/2, 20, 48, 48)];
       imageView.image = [UIImage imageNamed:ImageStr];
       
       
       
        UIFont *font = [UIFont fontWithName:@"PingFangSC-Medium" size:14];
        NSDictionary * dict=[NSDictionary dictionaryWithObject: font forKey:NSFontAttributeName];
        CGRect rect=[text boundingRectWithSize:CGSizeMake(250,CGFLOAT_MAX) options:NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil];
        UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, CGRectGetMaxY(imageView.frame),rect.size.width + 40, rect.size.height+20)];
        textLabel.backgroundColor = [UIColor clearColor];
        textLabel.textColor = [UIColor whiteColor];
        textLabel.textAlignment = NSTextAlignmentCenter;
        textLabel.numberOfLines = 1;
        textLabel.font = font;
        textLabel.text = text;
        textLabel.numberOfLines = 0;
       
       
       
        _contentView = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 120, 120)];
        _contentView.layer.cornerRadius = 8.0f;
        _contentView.backgroundColor = ToastBackgroundColor;
        [_contentView addSubview:textLabel];
        [_contentView addSubview:imageView];
        _contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        [_contentView addTarget:self action:@selector(toastTaped:) forControlEvents:UIControlEventTouchDown];
        _contentView.alpha = 0.0f;
        _duration = ToastDispalyDuration;
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(deviceOrientationDidChanged:) name:UIDeviceOrientationDidChangeNotification object:[UIDevice currentDevice]];
    }
    return self;
}





- (void)deviceOrientationDidChanged:(NSNotification *)notify{
    [self hideAnimation];
}

-(void)dismissToast{
    
    [_contentView removeFromSuperview];
}

-(void)toastTaped:(UIButton *)sender{
    [self hideAnimation];
}

- (void)setDuration:(CGFloat)duration{
    _duration = duration;
}

-(void)showAnimation{
    
    [UIView beginAnimations:@"show" context:NULL];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationDuration:0.3];
    _contentView.alpha = 1.0f;
    [UIView commitAnimations];
    
}

-(void)hideAnimation{
    [UIView beginAnimations:@"hide" context:NULL];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(dismissToast)];
    [UIView setAnimationDuration:0.3];
    _contentView.alpha = 0.0f;
    [UIView commitAnimations];
}

- (void)show{
    
     UIWindow *window = [UIApplication sharedApplication].keyWindow;
    _contentView.center = window.center;
    [window  addSubview:_contentView];
    [self showAnimation];
    [self performSelector:@selector(hideAnimation) withObject:nil afterDelay:_duration];
    
}

- (void)showFromTopOffset:(CGFloat)top{
    
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    _contentView.center = CGPointMake(window.center.x, top + _contentView.frame.size.height/2);
    [window  addSubview:_contentView];
    [self showAnimation];
    [self performSelector:@selector(hideAnimation) withObject:nil afterDelay:_duration];
    
}

- (void)showFromBottomOffset:(CGFloat)bottom{
   UIWindow *window = [UIApplication sharedApplication].keyWindow;
    _contentView.center = CGPointMake(window.center.x, window.frame.size.height-(bottom + _contentView.frame.size.height/2));
    [window  addSubview:_contentView];
    [self showAnimation];
    [self performSelector:@selector(hideAnimation) withObject:nil afterDelay:_duration];
}
#pragma mark-中间显示
+ (void)showCenterWithText:(NSString *)text{
    
    
    [DSTextShowToast showCenterWithText:text duration:ToastDispalyDuration];
}


#pragma mark-中间显示
+ (void)showCenterWithText:(NSString *)text andWithImage:(NSString *)ImageStr{
    DSTextShowToast *toast = [[DSTextShowToast alloc] initWithText:text andImageWithImageStr:ImageStr];
    [toast setDuration:ToastDispalyDuration];
    [toast show];
        
}


+ (void)showCenterWithText:(NSString *)text duration:(CGFloat)duration{
    
    DSTextShowToast *toast = [[DSTextShowToast alloc] initWithText:text];
    [toast setDuration:duration];
    [toast show];
    
}

#pragma mark-上方显示
+ (void)showTopWithText:(NSString *)text{
    
    [DSTextShowToast showTopWithText:text  topOffset:ToastSpace duration:ToastDispalyDuration];
}
+ (void)showTopWithText:(NSString *)text duration:(CGFloat)duration
{
     [DSTextShowToast showTopWithText:text  topOffset:ToastSpace duration:duration];
}
+ (void)showTopWithText:(NSString *)text topOffset:(CGFloat)topOffset{
    [DSTextShowToast showTopWithText:text  topOffset:topOffset duration:ToastDispalyDuration];
}

+ (void)showTopWithText:(NSString *)text topOffset:(CGFloat)topOffset duration:(CGFloat)duration{
    DSTextShowToast *toast = [[DSTextShowToast alloc] initWithText:text];
    [toast setDuration:duration];
    [toast showFromTopOffset:topOffset];
}

#pragma mark-下方显示
+ (void)showBottomWithText:(NSString *)text{
    
    [DSTextShowToast showBottomWithText:text  bottomOffset:ToastSpace duration:ToastDispalyDuration];
}
+ (void)showBottomWithText:(NSString *)text duration:(CGFloat)duration
{
      [DSTextShowToast showBottomWithText:text  bottomOffset:ToastSpace duration:duration];
}
+ (void)showBottomWithText:(NSString *)text bottomOffset:(CGFloat)bottomOffset{
    
    [DSTextShowToast showBottomWithText:text  bottomOffset:bottomOffset duration:ToastDispalyDuration];
    
}

+ (void)showBottomWithText:(NSString *)text bottomOffset:(CGFloat)bottomOffset duration:(CGFloat)duration{
    
    DSTextShowToast *toast = [[DSTextShowToast alloc] initWithText:text];
    [toast setDuration:duration];
    [toast showFromBottomOffset:bottomOffset];
    
}

@end
