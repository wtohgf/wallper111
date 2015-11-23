//
//  BZClassViewController.m
//  wallper111
//
//  Created by neuedu on 15/11/20.
//  Copyright (c) 2015年 neuedu. All rights reserved.
//

#import "BZClassViewController.h"

@interface BZClassViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation BZClassViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITableView * tableview = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    tableview.dataSource = self;
    tableview.delegate=self;
    [self.view addSubview:tableview];
    tableview.rowHeight = 100;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
static NSString * ID = @"11";
    UITableViewCell * cell =[tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil ) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    cell.textLabel .text = @"666666";
    
    return cell;


}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self performSegueWithIdentifier:@"bzc" sender:nil];
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
