//
//  QuickConsultViewController.m
//  MobileLirary
//
//  Created by Ralbatr on 14-3-19.
//  Copyright (c) 2014年 Ralbatr. All rights reserved.
//

#import "QuickConsultViewController.h"
#import "ComboxView.h"

@interface QuickConsultViewController ()

@end

@implementation QuickConsultViewController

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
    //设置标题
    self.title = @"快速查询";
    //设置背景
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background1.png"]];
    //初始化，界面，如：搜索框，按钮 combox
    [self _initView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)_initView
{
    //搜索输入框
    UITextField *searchTextField = [[UITextField alloc] init];
    searchTextField.frame = CGRectMake(30, 90, 260, 30);
    searchTextField.borderStyle = UITextBorderStyleRoundedRect;
    searchTextField.placeholder = @"请输入你要查找书籍的相关词组";
    searchTextField.textColor = [UIColor blueColor];
    searchTextField.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:searchTextField];
    //搜索方式选择按钮
    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:@[@"文字",@"语音",@"二维码"]];
    segmentedControl.frame = CGRectMake(30, 140, 260, 30);
    segmentedControl.selected = 0;
    [self.view addSubview:segmentedControl];
    // 书刊类别选项
    ComboxView *classCombox = [[ComboxView alloc] initWithFrame:CGRectMake(40, 180, 240, 50)];
    NSMutableArray *classArray = [NSMutableArray arrayWithObjects:@"所有书刊",@"中文图书",@"西文图书",@"中文期刊",@"西文期刊",nil];
    classCombox.textField.text = @"所有书刊";
    classCombox.textField.backgroundColor = [UIColor whiteColor];
    classCombox.tableArray = classArray;
    [self.view addSubview:classCombox];
    
}

@end
