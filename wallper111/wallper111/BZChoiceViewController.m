//
//  BZChoiceViewController.m
//  
//
//  Created by neuedu on 15/11/20.
//
//

#import "BZChoiceViewController.h"

@interface BZChoiceViewController ()<UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *JXScrollview;
@property (weak, nonatomic) IBOutlet UIPageControl *JXpageControl;
@property (weak, nonatomic) IBOutlet UICollectionView *JXCollectionView;

@end

@implementation BZChoiceViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    _JXScrollview.delegate = self;
    // Do any additional setup after loading the view.
    self.navigationController.navigationBarHidden = YES;
    [self setJXScrollview];
    [self setPageControlPosition];
  
}

-(void)setJXScrollview{
    NSURL * url = [[NSBundle mainBundle]URLForResource:@"lunboqi.plist" withExtension:nil];
    NSArray * GG = [NSArray arrayWithContentsOfURL:url];
    for (int i = 0 ; i <GG.count; i++) {
        UIImageView * GGimg = [[UIImageView alloc]initWithFrame:CGRectMake(i*_JXScrollview.frame.size.width, 0, _JXScrollview.frame.size.width, _JXScrollview.frame.size.height)];
        [_JXScrollview addSubview:GGimg];
       
    }
    _JXScrollview .contentSize = CGSizeMake(GG.count* _JXScrollview.frame.size.width, _JXScrollview.frame.size.height);
    _JXScrollview.pagingEnabled = YES;
}
-(void) setPageControlPosition{
    
    NSURL * url = [[NSBundle mainBundle]URLForResource:@"lunboqi.plist" withExtension:nil];
    NSArray * GG = [NSArray arrayWithContentsOfURL:url];
    _JXpageControl.numberOfPages = GG.count;
    _JXpageControl.currentPage = 0;
    
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    CGFloat num = scrollView.contentOffset.x/self.view.frame.size.width;
    _JXpageControl.currentPage = num;
}


@end
