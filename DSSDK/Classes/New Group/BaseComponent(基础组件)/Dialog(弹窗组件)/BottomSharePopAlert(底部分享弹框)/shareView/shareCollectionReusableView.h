//
//  shareCollectionReusableView.h
//  AiLeXue
//
//  Created by 宋建 on 2019/4/2.
//  Copyright © 2019 郑州市方舟教育科技有限公司. All rights reserved.
//  分享底部的collectioncell

#import <UIKit/UIKit.h>

@interface shareCollectionReusableView : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *shareIMg; // 分享的图片

@property (weak, nonatomic) IBOutlet UILabel *shareText;


@end
