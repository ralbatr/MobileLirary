//
//  QuickBorrowViewController.m
//  MobileLirary
//
//  Created by Ralbatr on 14-3-19.
//  Copyright (c) 2014年 Ralbatr. All rights reserved.
//

#import "QuickBorrowViewController.h"

@interface QuickBorrowViewController ()

@end

@implementation QuickBorrowViewController

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
    self.view.backgroundColor = [UIColor brownColor];
    self.title = @"快速借阅";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
