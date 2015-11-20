//
//  BZJXXXViewController.m
//  wallper111
//
//  Created by neuedu on 15/11/20.
//  Copyright (c) 2015年 neuedu. All rights reserved.
//

#import "BZJXXXViewController.h"
#import "RDVTabBar.h"

@interface BZJXXXViewController ()

@end

@implementation BZJXXXViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillAppear:(BOOL)animated{

    self .navigationController.navigationBarHidden = NO;
    
    [[self rdv_tabBarController] setTabBarHidden:YES];

}
-(void)viewWillDisappear:(BOOL)animated{

    self.navigationController.navigationBarHidden= YES;
        [[self rdv_tabBarController] setTabBarHidden:NO];
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
