//
//  RenewBookViewController.m
//  MobileLirary
//
//  Created by Ralbatr on 14-3-19.
//  Copyright (c) 2014年 Ralbatr. All rights reserved.
//

#import "RenewBookViewController.h"
#import "BorrowBooks.h"
#import "BorrowedBooksView.h"

#define kBookViewHight 220;

@interface RenewBookViewController ()

@end

@implementation RenewBookViewController

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
    self.title = @"已借续借";
    //设置背景
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background1.png"]];
    self.borrowBooksArray = [[NSMutableArray alloc] init];
    BorrowBooks *borrowBooks = [BorrowBooks initWithViewWithTitile:@"创业管理" andBarCodeNO:@"200704901" andAuthor:@"梁桥转，赵文红编著" andBorrowDate:@"2014-03-10" andReturnDate:@"2014-04-10" borrowCount:@"0" place:@"商学院"];
    for (int i=0; i<3; i++) {
        [self.borrowBooksArray addObject:borrowBooks];
    }
    //初始化 tableView
    [self _initTableView];
}

- (void)_initTableView
{
    _borrowBookList = [[UITableView alloc] init];
    NSLog(@"%d",self.borrowBooksArray.count);
    float hight = self.borrowBooksArray.count * kBookViewHight;
    _borrowBookList.frame = CGRectMake(0, 0, 320, hight);
    _borrowBookList.delegate = self;
    _borrowBookList.dataSource = self;
    [self.view addSubview:_borrowBookList];
}

//cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *BorrowBooksCell = @"BorrowBooksCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:BorrowBooksCell];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:BorrowBooksCell];
    }
    NSUInteger row = [indexPath row];
    BorrowBooks *borrowBooks = (BorrowBooks *)self.borrowBooksArray[row];
    
    BorrowedBooksView  *borrowBooksView = [[BorrowedBooksView alloc] initWithFrame:CGRectMake(0, 0, 320, 94) WithViewWithTitile:borrowBooks.titleString andBarCodeNO:borrowBooks.barCodeNOString andAuthor:borrowBooks.author andBorrowDate:borrowBooks.borrowDate andReturnDate:borrowBooks.returnDate borrowCount:borrowBooks.borrowCount place:borrowBooks.placeString];
    [cell.contentView addSubview:borrowBooksView];

    return cell;
}
//返回高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return kBookViewHight;
}
//section个数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//返回tableView 分区内的行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.borrowBooksArray.count;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
