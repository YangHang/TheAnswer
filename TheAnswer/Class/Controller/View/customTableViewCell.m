//
//  customTableViewCell.m
//  TheAnswer
//
//  Created by Yang on 14-4-17.
//  Copyright (c) 2014年 Yang. All rights reserved.
//

#import "customTableViewCell.h"
#import "commonMacro.h"

@implementation customTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        [self creatCustomCell];
    }
    return self;
}

- (void)creatCustomCell

{
    //左边图片
    
    _picture = [[UIImageView alloc] init];
    [_picture setFrame:CGRectMake(10, 10, 80,70)];
    [_picture setImage:[UIImage imageNamed:@"Picture"]];
    
    //headTile
    
    _headTitle = [[UILabel alloc] initWithFrame:CGRectMake(100, 5, 200, 30)];
    _headTitle.font = [UIFont systemFontOfSize:18];
    
    //subtitle
    
    _subTitle = [[UITextView alloc] initWithFrame:CGRectMake(100, 35, 210, 50)];
    _subTitle.editable = NO;
    _subTitle.font = [UIFont systemFontOfSize:12];
    _subTitle.textColor = GRAY;
    
    //date
    
    _date = [[UILabel alloc] initWithFrame:CGRectMake(250, 60, 60, 15)];
    _date.font = [UIFont systemFontOfSize:13];
    _date.textColor = [UIColor grayColor];
    
    [self.contentView addSubview:_picture];
    [self.contentView addSubview:_headTitle];
    [self.contentView addSubview:_subTitle];
    [self.contentView addSubview:_date];

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
