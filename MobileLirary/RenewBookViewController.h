//
//  RenewBookViewController.h
//  MobileLirary
//
//  Created by Ralbatr on 14-3-19.
//  Copyright (c) 2014年 Ralbatr. All rights reserved.
//

#import "BaseViewController.h"

@interface RenewBookViewController : BaseViewController <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) UITableView *borrowBookList ;
@property (nonatomic,strong) NSMutableArray *borrowBooksArray;

@end
