//
//  BorrowBooks.m
//  MobileLirary
//
//  Created by Ralbatr on 14-3-25.
//  Copyright (c) 2014年 Ralbatr. All rights reserved.
//

#import "BorrowBooks.h"

@implementation BorrowBooks


+ (id)initWithViewWithTitile:(NSString *)titleString andBarCodeNO:(NSString *)barCodeString andAuthor:(NSString *)authorName andBorrowDate:(NSString *)borrowDate andReturnDate:(NSString *)returnDate borrowCount:(NSString *)borrowCount place:(NSString *)place
{
    BorrowBooks *borrowBooks = [[BorrowBooks alloc] init];
    borrowBooks.titleString = titleString;
    borrowBooks.barCodeNOString = barCodeString;
    borrowBooks.author = authorName;
    borrowBooks.borrowDate = borrowDate;
    borrowBooks.returnDate = returnDate;
    borrowBooks.borrowCount = borrowCount;
    borrowBooks.placeString = place;
    return borrowBooks;
}

@end
