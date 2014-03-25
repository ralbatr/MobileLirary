//
//  BorrowedBooksView.m
//  MobileLirary
//
//  Created by Ralbatr on 14-3-25.
//  Copyright (c) 2014年 Ralbatr. All rights reserved.
//

#import "BorrowedBooksView.h"

@implementation BorrowedBooksView

- (id)initWithFrame:(CGRect)frame WithViewWithTitile:(NSString *)titleString andBarCodeNO:(NSString *)barCodeString andAuthor:(NSString *)authorName andBorrowDate:(NSString *)borrowDate andReturnDate:(NSString *)returnDate borrowCount:(NSString *)borrowCount place:(NSString *)place
{
    self = [super initWithFrame:frame];
    if (self) {
        [self _initWithViewWithTitile:titleString andBarCodeNO:barCodeString andAuthor:authorName andBorrowDate:borrowDate andReturnDate:returnDate borrowCount:borrowCount place:place];
    }
    return self;
}

- (void)_initWithViewWithTitile:(NSString *)titleString andBarCodeNO:(NSString *)barCodeString andAuthor:(NSString *)authorName andBorrowDate:(NSString *)borrowDate andReturnDate:(NSString *)returnDate borrowCount:(NSString *)borrowCount place:(NSString *)place
{
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.frame = CGRectMake(20, 10, 280, 25);
    titleLabel.text = [NSString stringWithFormat:@"题   名     %@",titleString];
    [self addSubview:titleLabel];
    
    UILabel *barCodeLabel = [[UILabel alloc] init];
    barCodeLabel.frame = CGRectMake(20, 35, 300, 25);
    barCodeLabel.text = [NSString stringWithFormat:@"条形码     %@",barCodeString];
    [self addSubview:barCodeLabel];
    
    UILabel *authorLabel = [[UILabel alloc] init];
    authorLabel.frame = CGRectMake(20, 60, 300, 25);
    authorLabel.text = [NSString stringWithFormat:@"责任者     %@",authorName];
    [self addSubview:authorLabel];
    
    UILabel *borrowDateLabel = [[UILabel alloc] init];
    borrowDateLabel.frame = CGRectMake(20, 85, 300, 25);
    borrowDateLabel.text = [NSString stringWithFormat:@"借阅日期 %@",borrowDate];
    [self addSubview:borrowDateLabel];
    
    UILabel *returnDateLabel = [[UILabel alloc] init];
    returnDateLabel.frame = CGRectMake(20, 110, 300, 25);
    returnDateLabel.text = [NSString stringWithFormat:@"应还日期 %@",returnDate];
    [self addSubview:returnDateLabel];
    
    UILabel *borrowCountLabel = [[UILabel alloc] init];
    borrowCountLabel.frame = CGRectMake(20, 135, 300, 25);
    borrowCountLabel.text = [NSString stringWithFormat:@"续借次数 %@",borrowCount];
    [self addSubview:borrowCountLabel];
    
    UILabel *placeLabel = [[UILabel alloc] init];
    placeLabel.frame = CGRectMake(20, 160, 300, 25);
    placeLabel.text = [NSString stringWithFormat:@"馆藏地   %@",place];
    [self addSubview:placeLabel];
}

@end
