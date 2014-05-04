//
//  ContentViewController.m
//  TheAnswer
//
//  Created by Yang on 14-4-17.
//  Copyright (c) 2014年 Yang. All rights reserved.
//

#import "ContentViewController.h"
#import "commonMacro.h"
#import "customTableViewCell.h"

@interface ContentViewController ()

@end

@implementation ContentViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //设置tableview
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0,WIDTH, HEIGHT)];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.separatorInset = UIEdgeInsetsZero;
    [_tableView setShowsVerticalScrollIndicator:NO];
    [self.view addSubview:_tableView];
    
    //设置navigationItem的按钮和文字

     self.title = @"通知";

    //取消tableview的滚动条
    

    
}

#pragma mark - talbeViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section

{
    if (section == 0) {
        return 1;
    }else{

        return 15;
    }

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    static NSString *cellIdentifier = @"cellIdentifier";
    customTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[customTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.headTitle.text = @"定制体验 感受未来定制";
    cell.subTitle.text = @"浴缸可以将水温恒定在让你舒适的温度，花洒还可以唱歌。";
    cell.date.text = @"2014-2-8";
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath

{

    return  90;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView

{

    return 2;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section

{
    UIView *sectionTitle = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 310, 30)];
    sectionTitle.backgroundColor = GRAYLITE;
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, 310, 30)];
    if (section == 0) {
        title.text = @"今天";
    }else{
        title.text = @"过去";
    }
    title.textColor = SECTIONTITLE;
    [sectionTitle addSubview:title];
    return sectionTitle;

}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 30;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
