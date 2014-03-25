//
//  BorrowBooks.h
//  MobileLirary
//
//  Created by Ralbatr on 14-3-25.
//  Copyright (c) 2014年 Ralbatr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BorrowBooks : NSObject

@property (nonatomic,strong) NSString *titleString;
@property (nonatomic,strong) NSString *barCodeNOString;
@property (nonatomic,strong) NSString *author;
@property (nonatomic,strong) NSString *borrowDate;
@property (nonatomic,strong) NSString *returnDate;
@property (nonatomic,strong) NSString *borrowCount;
@property (nonatomic,strong) NSString *placeString;

+ (id)initWithViewWithTitile:(NSString *)titleString andBarCodeNO:(NSString *)barCodeString andAuthor:(NSString *)authorName andBorrowDate:(NSString *)borrowDate andReturnDate:(NSString *)returnDate borrowCount:(NSString *)borrowCount place:(NSString *)place;

@end
