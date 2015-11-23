//
//  BZCUITableViewCell.m
//  wallper111
//
//  Created by neuedu on 15/11/20.
//  Copyright (c) 2015年 neuedu. All rights reserved.
//

#import "BZCUITableViewCell.h"

@implementation BZCUITableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
+ (instancetype)tableViewCellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"BZc";
    BZCUITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID ];
    if (cell == nil) {
        cell = [[ BZCUITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    return cell;
    
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        //自定义contentView
        [self setupContentView];
    }
    return self;
}
#pragma mark 自定义contentView
-(void)setupContentView{
    UIImageView * imgview =[[ UIImageView alloc]init];
    
    
}


@end
