//
//  customTableViewCell.h
//  TheAnswer
//
//  Created by Yang on 14-4-17.
//  Copyright (c) 2014年 Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface customTableViewCell : UITableViewCell

@property (nonatomic,strong) UILabel *headTitle;
@property (nonatomic,strong) UITextView *subTitle;
@property (nonatomic,strong) UIImageView *picture;
@property (nonatomic,strong) UILabel *date;

@end
