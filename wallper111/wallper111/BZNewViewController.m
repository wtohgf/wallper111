//
//  BZNewViewController.m
//  wallper111
//
//  Created by neuedu on 15/11/20.
//  Copyright (c) 2015年 neuedu. All rights reserved.
//

#import "BZNewViewController.h"
#import "UIView+NKMoreAttribute.h"

@interface BZNewViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property(nonatomic,weak)UICollectionView * collectionView;

@end

@implementation BZNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setscrollView];
  

    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc]init];
    [flowLayout setItemSize:CGSizeMake(self.view.width/3 - 1.5, self.view.height/3)];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    flowLayout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);
    flowLayout.minimumLineSpacing = 1;
    flowLayout.minimumInteritemSpacing = 1;

    UICollectionView *cv = [[UICollectionView alloc]initWithFrame:[UIScreen mainScreen].bounds collectionViewLayout:flowLayout];
    
    _collectionView = cv;
    cv.frame = CGRectMake(0, _topBtnClick.bottom+5, self.view.width, self.view.height - _topBtnClick.bottom );
    [self.view addSubview:_collectionView];
   
    _collectionView.delegate = self;
    _collectionView.dataSource = self;
     [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollectionViewCell"];
     _collectionView.bounces = NO;
    

    
}

-(void)viewWillAppear:(BOOL)animated{

    self.navigationController.navigationBarHidden = YES;
}
#pragma mark 设置scrollview
-(void)setscrollView{
    _scrollView.contentSize = CGSizeMake(CGRectGetMaxX(_topBtnClick.frame)+10, self.scrollView.height);
    
}
#pragma mark collection数据源方法

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{

    return 9;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * ID = @"UICollectionViewCell";
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:ID forIndexPath:indexPath];
   UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, cell.contentView.width,cell.contentView.height)];
    
    cell.backgroundColor = [UIColor colorWithRed:((10 * indexPath.row) / 255.0) green:((20 * indexPath.row)/255.0) blue:((30 * indexPath.row)/255.0) alpha:1.0f];
    for (id subView in cell.contentView.subviews ) {
        [subView removeFromSuperview];
    }
  [cell.contentView addSubview:img];
    return cell;

}
////定义每个UICollectionView 的大小
//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
//{
//    return CGSizeMake(96, 150);
//}
////定义每个UICollectionView 的 margin
//-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
//{
//    return UIEdgeInsetsMake(5, 5, 5, 5);
//}

//UICollectionView被选中时调用的方法
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"2to 2-3" sender:nil];
}
//返回这个UICollectionView是否可以被选择
-(BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}


#pragma mark 今日精选
- (IBAction)today:(UIButton *)sender {
    [self performSegueWithIdentifier:@"newtophoto" sender:nil];
  
   
    
}
#pragma mark 本周推荐
- (IBAction)week:(UIButton *)sender {
    [self performSegueWithIdentifier:@"newtophoto" sender:nil];

}
#pragma mark 最佳锁屏
- (IBAction)best:(UIButton *)sender {
    [self performSegueWithIdentifier:@"newtophoto" sender:nil];
    
}
#pragma mark 最佳
- (IBAction)top:(UIButton *)sender {
    [self performSegueWithIdentifier:@"newtophoto" sender:nil];

}
@end
