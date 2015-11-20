//
//  BZStartViewController.m
//  wallper111
//
//  Created by neuedu on 15/11/20.
//  Copyright (c) 2015年 neuedu. All rights reserved.
//

#import "BZStartViewController.h"

@interface BZStartViewController ()

@end

@implementation BZStartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIStoryboard* storyboard1 = [UIStoryboard storyboardWithName:@"BZChoice" bundle:nil];
    
    UINavigationController *homePageViewController = [storyboard1 instantiateViewControllerWithIdentifier:@"BZChoiceNavigationController"];
    
    UIStoryboard* storyboard2 = [UIStoryboard storyboardWithName:@"BZClass" bundle:nil];
    
    UINavigationController *forumViewController = [storyboard2 instantiateViewControllerWithIdentifier:@"BZClassNavigationController"];
    
    UIStoryboard* storyboard3 = [UIStoryboard storyboardWithName:@"BZNew" bundle:nil];
    UINavigationController *tradeViewController = [storyboard3 instantiateViewControllerWithIdentifier:@"BZNewNavigationController"];
    
    UIStoryboard* storyboard4 = [UIStoryboard storyboardWithName:@"BZMain" bundle:nil];
    UINavigationController *toolsViewController = [storyboard4 instantiateViewControllerWithIdentifier:@"BZMainNavigationController"];
    
    
    
    [self setViewControllers:@[homePageViewController,forumViewController,
                               tradeViewController,toolsViewController]];
    ;
    
    //UIImage *finishedImage = [UIImage imageNamed:@"tabbar_selected_background"];
    //UIImage *unfinishedImage = [UIImage imageNamed:@"tabbar_normal_background"];
    //NSArray *tabBarItemImages = @[@"bottom_btn1", @"bottom_btn2", @"bottom_btn3"];
    NSArray *tabBarItemTitles = @[@"精选", @"分类", @"最新", @"我"];
    
    RDVTabBar *tabBar = [self tabBar];
    
    [tabBar setFrame:CGRectMake(CGRectGetMinX(tabBar.frame), CGRectGetMinY(tabBar.frame), CGRectGetWidth(tabBar.frame), 50)];
    
    NSInteger index = 0;
    for (RDVTabBarItem *item in [[self tabBar] items]) {
        //[item setBackgroundSelectedImage:finishedImage withUnselectedImage:unfinishedImage];
        //UIImage *selectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_checked",
        //[tabBarItemImages objectAtIndex:index]]];
        //UIImage *unselectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_unchecked",
        //[tabBarItemImages objectAtIndex:index]]];
        //[item setFinishedSelectedImage:selectedimage withFinishedUnselectedImage:unselectedimage];
        
        item.title = tabBarItemTitles[index];
        
        item.selectedTitleAttributes = @{NSForegroundColorAttributeName: [UIColor purpleColor],NSFontAttributeName: [UIFont systemFontOfSize:18.f]};
        
        item.unselectedTitleAttributes = @{NSForegroundColorAttributeName: [UIColor grayColor],NSFontAttributeName: [UIFont systemFontOfSize:16.f]};
        
        index++;
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
