//
//  BZCUITableViewCell.h
//  wallper111
//
//  Created by neuedu on 15/11/20.
//  Copyright (c) 2015年 neuedu. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BZClass ;
@interface BZCUITableViewCell : UITableViewCell
@property (weak,nonatomic)  UIImageView * ImgView;
@property (weak,nonatomic)  UILabel * Label1;
@property (weak,nonatomic) UILabel *Label2 ;



@property(nonatomic,strong)BZClass * bzcalss;
+ (instancetype)tableViewCellWithTableView:(UITableView*)tableView;
@end
