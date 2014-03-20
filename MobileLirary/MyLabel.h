//
//  MyLabel.h
//  自定义Navigation和ViewController
//
//  Created by Ralbatr on 14-3-18.
//  Copyright (c) 2014年 Ralbatr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyLabel : UILabel

@property (nonatomic,copy) NSString *colorName;

- (id)initWithColorName:(UIColor *)colorName;

@end
