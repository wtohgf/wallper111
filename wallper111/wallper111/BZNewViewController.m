//
//  BZNewViewController.m
//  wallper111
//
//  Created by neuedu on 15/11/20.
//  Copyright (c) 2015年 neuedu. All rights reserved.
//

#import "BZNewViewController.h"
#import "UIView+NKMoreAttribute.h"
@interface BZNewViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation BZNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
-(void)viewWillAppear:(BOOL)animated{

    self.navigationController.navigationBarHidden = YES;
}
#pragma mark 设置scrollview
-(void)setscrollView{


}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark 今日精选
- (IBAction)today:(UIButton *)sender {
}
#pragma mark 本周推荐
- (IBAction)week:(UIButton *)sender {
}
#pragma mark 最佳锁屏
- (IBAction)best:(UIButton *)sender {
}
#pragma mark 最佳
- (IBAction)top:(UIButton *)sender {
}
@end
