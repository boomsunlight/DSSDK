//
//  IMY_NJKWebViewProgress.h
//
//  Created by Satoshi Aasano on 4/20/13.
//  Copyright (c) 2013 Satoshi Asano. All rights reserved.
//

#import <UIKit/UIKit.h>

#undef CX_NJK_weak
#if __has_feature(objc_arc_weak)
#define CX_NJK_weak weak
#else
#define CX_NJK_weak unsafe_unretained
#endif

typedef void (^CX_NJKWebViewProgressBlock)(CGFloat progress);

@protocol CX_NJKWebViewProgressDelegate;
@interface CX_NJKWebViewProgress : NSObject <UIWebViewDelegate>

@property (nonatomic, CX_NJK_weak) id<CX_NJKWebViewProgressDelegate> progressDelegate;
@property (nonatomic, CX_NJK_weak) id<UIWebViewDelegate> webViewProxyDelegate;
@property (nonatomic, copy) CX_NJKWebViewProgressBlock progressBlock;
@property (nonatomic, readonly) CGFloat progress; // 0.0..1.0

- (void)reset;

@end

@protocol CX_NJKWebViewProgressDelegate <NSObject>
- (void)webViewProgress:(CX_NJKWebViewProgress *)webViewProgress updateProgress:(CGFloat)progress;
@end

