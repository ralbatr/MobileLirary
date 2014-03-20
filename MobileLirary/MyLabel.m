//
//  MyLabel.m
//  自定义Navigation和ViewController
//
//  Created by Ralbatr on 14-3-18.
//  Copyright (c) 2014年 Ralbatr. All rights reserved.
//

#import "MyLabel.h"

@implementation MyLabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithColorName:(UIColor *)colorName
{
    self = [self init];
    if (self) {
        self.textColor = colorName;
    }
    return self;
}



@end
