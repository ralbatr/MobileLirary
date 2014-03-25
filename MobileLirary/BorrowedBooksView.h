//
//  BorrowedBooksView.h
//  MobileLirary
//
//  Created by Ralbatr on 14-3-25.
//  Copyright (c) 2014年 Ralbatr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BorrowedBooksView : UIView

- (id)initWithFrame:(CGRect)frame WithViewWithTitile:(NSString *)titleString andBarCodeNO:(NSString *)barCodeString andAuthor:(NSString *)authorName andBorrowDate:(NSString *)borrowDate andReturnDate:(NSString *)returnDate borrowCount:(NSString *)borrowCount place:(NSString *)place;

@end
