//
//  MainViewController.m
//  TheAnswer
//
//  Created by Yang on 14-4-17.
//  Copyright (c) 2014年 Yang. All rights reserved.
//

#import "MainViewController.h"
#import "commonMacro.h"
#import "ContentViewController.h"

@interface MainViewController ()

@property (nonatomic,strong) UIView *animationView;

@end

@implementation MainViewController

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
    
    //设置navigationBar颜色
    
    self.navigationController.navigationBar.barTintColor = BLUE;
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
    //添加Button
   
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setFrame:CGRectMake(0, 70, 320, 40)];
    [btn setBackgroundColor:[UIColor clearColor]];
    [btn setTitle:@"查看通知" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(lookTheNotice) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    //设置标题
    
    self.title = @"The Answer";
    
    //动画
    
    _animationView =[[UIView alloc] initWithFrame:CGRectMake(0, 240, WIDTH, HEIGHT)];
    UIImage *arrow = [UIImage imageNamed:@"arrow"];
    UIImageView *animation = [[UIImageView alloc] initWithImage:arrow];
    animation.frame = CGRectMake(35, 0, arrow.size.width, arrow.size.height);
    [_animationView addSubview:animation];
    [self.view addSubview:_animationView];
    [self moveUp];
    
    //将返回键的文字设置为空
    
    UIBarButtonItem *backbutton = [[UIBarButtonItem alloc]init];
    backbutton.title = @"";
    self.navigationItem.backBarButtonItem = backbutton;
   
}

#pragma mark - The btn clickEvent

- (void)lookTheNotice

{
    ContentViewController *cvc = [[ContentViewController alloc] init];
    [self.navigationController pushViewController:cvc animated:YES];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)moveUp

{

    [UIView animateWithDuration:1.15  animations:^{
        
        _animationView.frame = CGRectMake(0, 90, WIDTH, HEIGHT);
        
    }completion:^(BOOL finised){
        
        [self moveDown];
        
    }];

}
- (void)moveDown

{
    [UIView animateWithDuration:1 animations:^{
        _animationView.frame = CGRectMake(0, 240, WIDTH, HEIGHT);
    }completion:^(BOOL finised){
    
       _animationView.hidden = YES;
    
    }];
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
