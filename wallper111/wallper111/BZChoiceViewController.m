//
//  BZChoiceViewController.m
//  
//
//  Created by neuedu on 15/11/20.
//
//

#import "BZChoiceViewController.h"
#import "UIView+NKMoreAttribute.h"
@interface BZChoiceViewController ()<UIScrollViewDelegate,UICollectionViewDataSource,UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *JXScrollview;
@property (weak, nonatomic) IBOutlet UIPageControl *JXpageControl;
@property (weak, nonatomic) IBOutlet UICollectionView *JXCollectionView;
@property(nonatomic ,strong)NSTimer * timer;
@end

@implementation BZChoiceViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    _JXScrollview.delegate = self;
    // Do any additional setup after loading the view.
    self.navigationController.navigationBarHidden = YES;
    [self setJXScrollview];
    [self setPageControlPosition];
//    _timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(autoPlay) userInfo:nil repeats:YES];

 
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc]init];
    [flowLayout setItemSize:CGSizeMake(self.view.width/3-1.5, self.view.height/3)];//设置cell的尺寸
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];//设置其布局方向
    flowLayout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);//设置其边界
    flowLayout.minimumInteritemSpacing = 1;
    flowLayout.minimumLineSpacing = 1;
    
   UICollectionView* cv = [[UICollectionView alloc] initWithFrame:[UIScreen mainScreen].bounds collectionViewLayout:flowLayout];
    _JXCollectionView = cv;
    cv.frame = CGRectMake(0, _JXScrollview.bottom, self.view.width, self.view.height-_JXScrollview.bottom-1);
    [self.view addSubview:_JXCollectionView];

    _JXCollectionView.dataSource = self;
    _JXCollectionView.delegate = self;
    [_JXCollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollectionViewCell"];
    _JXCollectionView.bounces = NO;

}

-(void)setJXScrollview{
    NSURL * url = [[NSBundle mainBundle]URLForResource:@"lunboqi.plist" withExtension:nil];
    NSArray * GG = [NSArray arrayWithContentsOfURL:url];
    for (int i = 0 ; i <GG.count; i++) {
        UIImageView * GGimg = [[UIImageView alloc]initWithFrame:CGRectMake(i*_JXScrollview.frame.size.width, 0, _JXScrollview.frame.size.width, _JXScrollview.frame.size.height)];
        [_JXScrollview addSubview:GGimg];
        GGimg.image  = [UIImage imageNamed:GG[i]];
       
    }
    _JXScrollview .contentSize = CGSizeMake(GG.count* _JXScrollview.frame.size.width, _JXScrollview.frame.size.height - 44);
    _JXScrollview.pagingEnabled = YES;
    _JXScrollview.bounces = NO;
    _JXScrollview.showsVerticalScrollIndicator = false;
    _JXScrollview.showsHorizontalScrollIndicator = false;

    
}
 int index2;
-(void) setPageControlPosition{
    
    NSURL * url = [[NSBundle mainBundle]URLForResource:@"lunboqi.plist" withExtension:nil];
    NSArray * GG = [NSArray arrayWithContentsOfURL:url];
    _JXpageControl.numberOfPages = GG.count;
    _JXpageControl.currentPage = 0;
    
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
 

    CGFloat num = scrollView.contentOffset.x/self.view.frame.size.width;
    _JXpageControl.currentPage = num;
    index2 = (_JXScrollview.contentOffset.x +0.5* _JXScrollview.frame.size.width)/_JXScrollview.frame.size.width;
    index2 = index2+1;
 
    
}
//- (void) autoPlay
//{
//    
//    //index1++;
//    if (index2 == 3) {
//        index2 = 0;
//    }
//    
//    
//    _JXScrollview.contentOffset = CGPointMake(index2 * _JXScrollview.frame.size.width, 0);
//    index2++;
//}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 21;

}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{


static NSString * ID = @"UICollectionViewCell";
    
    
    
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:ID forIndexPath:indexPath];
    cell.backgroundColor = [UIColor blueColor];
    UIImageView *  imgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, cell.contentView.width, cell.contentView.height)];
    
        cell.backgroundColor = [UIColor colorWithRed:((10 * indexPath.row) / 255.0) green:((20 * indexPath.row)/255.0) blue:((30 * indexPath.row)/255.0) alpha:1.0f];
    
    for (id subView in cell.contentView.subviews) {
        [subView removeFromSuperview];
    }
    [cell.contentView addSubview:imgView];

    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:@"JXXX" sender:nil];

}
@end
