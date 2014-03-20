//
//  BaseTableView.h
//  Weibo
//
//  Created by Ralbatr on 13-11-23.
//  Copyright (c) 2013年 Ralbatr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EGORefreshTableHeaderView.h"

@class BaseTableView;
@protocol UITableViewEventDelegate <NSObject>
@optional
//下拉
- (void)pullDown:(BaseTableView *)tableView;
//上拉
- (void)pullUp:(BaseTableView *)tableView;
//选中一个cell
- (void)tableView:(BaseTableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;

@end

@interface BaseTableView : UITableView <EGORefreshTableHeaderDelegate,UITableViewDataSource,UITableViewDelegate>
{
    EGORefreshTableHeaderView *_refreshHeaderView;
    BOOL _reloading;
}

@property (nonatomic,assign) BOOL refreshHeader;//是否需要下拉效果
@property (nonatomic,retain) NSArray *data;//为tableview提供数据
@property (nonatomic,assign) id <UITableViewEventDelegate> eventDelegate;
- (void)doneLoadingTableViewData;

@end
