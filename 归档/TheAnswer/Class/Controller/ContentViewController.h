//
//  ContentViewController.h
//  TheAnswer
//
//  Created by Yang on 14-4-17.
//  Copyright (c) 2014年 Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContentViewController : UIViewController <UITabBarDelegate,UITableViewDataSource>

@property (nonatomic,strong) UITableView *tableView;

@end
