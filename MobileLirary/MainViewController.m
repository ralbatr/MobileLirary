//
//  MainViewController.m
//  MobileLirary
//
//  Created by Ralbatr on 14-3-19.
//  Copyright (c) 2014年 Ralbatr. All rights reserved.
//

#import "MainViewController.h"
#import "QuickConsultViewController.h"
#import "QuickBorrowViewController.h"
#import "RenewBookViewController.h"
#import "AnnounceViewController.h"
#import "AttentionViewController.h"
#import "MyCollectViewController.h"
#import "NewBookAnnouceViewController.h"
#import "MyDiscussViewController.h"
#import "SystemSetViewController.h"
#import "AboutUsViewController.h"
#import "BaseNavigationViewController.h"

@interface MainViewController ()

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
    //设置背景
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background1.png"]];
    //初始化控制器
    [self _initViewController];
    //添加各个 选项按钮
    [self _initTabbarView];
}

//初始化字控制器
- (void)_initViewController
{
    QuickConsultViewController *quickConsultViewController = [[QuickConsultViewController alloc] init];
    QuickBorrowViewController *quickBorrowViewController = [[QuickBorrowViewController alloc] init];
    RenewBookViewController *renewBookViewControoler = [[RenewBookViewController alloc] init];
    AnnounceViewController *annouceViewController = [[AnnounceViewController alloc] init];
    AttentionViewController *attentionViewController = [[AttentionViewController alloc] init];
    MyCollectViewController *myCollectViewController = [[MyCollectViewController alloc] init];
    NewBookAnnouceViewController *newBookAnnouceViewController = [[NewBookAnnouceViewController alloc] init];
    MyDiscussViewController *myDiscussViewController = [[MyDiscussViewController alloc] init];
    SystemSetViewController *systemSetViewController = [[SystemSetViewController alloc] init];
    AboutUsViewController *aboutUsViewController = [[AboutUsViewController alloc] init];
    
    _viewController = @[quickConsultViewController,quickBorrowViewController,renewBookViewControoler,annouceViewController,attentionViewController,myCollectViewController,newBookAnnouceViewController,myDiscussViewController,systemSetViewController,aboutUsViewController];
}

//自定义tabBar
- (void)_initTabbarView
{
//    _tabbarView = [[UIView alloc] init];
//    _tabbarView.frame = CGRectMake(0, 69, 320, 149);
//    [self.view addSubview:_tabbarView];

    NSArray *iconArray = [NSArray arrayWithObjects:@"search.png",@"borrow.png",@"renew.png",@"attention.png",@"notice",@"collect.png",@"newBooks.png",@"comment.png",@"set.png",@"aboutUs", nil];
    NSArray *discArray = [NSArray arrayWithObjects:@"快速查询",@"快速借阅", @"已借续借",@"通告通知",@"我的关注",@"我的收藏",@"新书通报",@"我的评论",@"系统设置",@"关于我们",nil];
    for (int i = 0; i < 10; i++) {
        CGRect frame = CGRectMake((35*(i%3+1)+60*(i%3)), 95*(i/3)+65+30, 60, 60);
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setImage:[UIImage imageNamed:[iconArray objectAtIndex:i]] forState:UIControlStateNormal];
        button.frame = frame;
        button.tag = i;
        [button addTarget:self action:@selector(selectViewController:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
        CGRect labelFrame = CGRectMake(frame.origin.x+10, frame.origin.y+40, frame.size.width, frame.size.height);
        UILabel *label = [[UILabel alloc] initWithFrame:labelFrame];
        label.font = [UIFont systemFontOfSize:10];
        label.textColor = [UIColor whiteColor];
        label.text = discArray[i];
        [self.view addSubview:label];
    }
}

- (void)selectViewController:(UIButton *)button
{
    [self.navigationController pushViewController:_viewController[button.tag] animated:YES];
}

//隐藏tabBar
- (void)viewWillAppear:(BOOL)animated
{
//    self.tabBar.hidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
