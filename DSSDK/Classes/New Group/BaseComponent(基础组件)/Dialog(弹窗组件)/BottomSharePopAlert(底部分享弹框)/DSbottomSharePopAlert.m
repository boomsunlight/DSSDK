//
//  DSbottomSharePopAlert.m
//  AiLeXue
//
//  Created by songyu on 2020/7/17.
//  Copyright © 2020 郑州市方舟教育科技有限公司. All rights reserved.
//

#import "DSbottomSharePopAlert.h"
#import "shareCollectionReusableView.h"

// 弹框不涉及到暗黑模式

@interface DSbottomSharePopAlert ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>{
    
}

@property (weak, nonatomic) IBOutlet UICollectionView *shareCollectionView;
@property (weak, nonatomic) IBOutlet UIView *bottomLineVew;
@property (weak, nonatomic) IBOutlet UIView *bgView;


@end

@implementation DSbottomSharePopAlert

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    /* 使用方式
     NSArray *contentArray = @[@{@"name":@"微信好友",@"icon":@"weixinnew"},
         @{@"name":@"朋友圈 ",@"icon":@"pengyouquannew"},
         @{@"name":@"QQ",@"icon":@"QQnew"},
         @{@"name":@"QQ空间",@"icon":@"QQkjnew"}
         ];
     
     DSbottomSharePopAlert *vc = [[DSbottomSharePopAlert alloc]init];
     vc.contentArray = contentArray.mutableCopy;
     vc.selectCallBack = ^(NSInteger index) {
         
         NSLog(@"index=======%ld",index);
     };
     [self yc_bottomPresentController:vc presentedHeight:150.0f completeHandle:^(BOOL presented) {
         
     }];
     
    
     */
    
    
    
    
    
    
    
      UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) byRoundingCorners:(UIRectCornerTopLeft | UIRectCornerTopRight) cornerRadii:CGSizeMake(24,24)];
      CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
      maskLayer.frame = self.view.bounds;
      maskLayer.path = maskPath.CGPath;
      self.view.layer.mask = maskLayer;
      self.bgView.backgroundColor = [UIColor clearColor];
     // self.bgView.backgroundColor = [UIColor dswy_colorWithLightColorStr:@"0xffffff" DarkColor:@"0x1A1A1A"];;
     // self.view.backgroundColor = self.bgView.backgroundColor;
     // self.bottomLineVew.backgroundColor = [UIColor dswy_colorWithLightColorStr:@"0xF1F1F1" DarkColor:@"0x666666"];
    
    
    self.shareCollectionView.dataSource = self;
    self.shareCollectionView.delegate = self;
    self.shareCollectionView.showsVerticalScrollIndicator = NO;          // 隐藏垂直方向滚动条
    [self.shareCollectionView registerNib:[UINib nibWithNibName:@"shareCollectionReusableView" bundle:nil] forCellWithReuseIdentifier:@"shareCollectionReusableView"];
    
    

}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
        return self.contentArray.count;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"self.shareCollectionView.bounds.size.width=====%f",self.shareCollectionView.bounds.size.width/4);
    return CGSizeMake(self.shareCollectionView.bounds.size.width/4, 80);
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    shareCollectionReusableView * cell  = [collectionView dequeueReusableCellWithReuseIdentifier:@"shareCollectionReusableView" forIndexPath:indexPath];
    cell.shareIMg.image  = [UIImage imageNamed:self.contentArray[indexPath.row][@"icon"]];
    cell.shareText.text = self.contentArray[indexPath.row][@"name"];
    return cell;
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    if (self.selectCallBack) {
        self.selectCallBack(indexPath.row);
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)dismissVC:(UIButton *)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];

}


@end
