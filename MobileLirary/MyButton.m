//
//  MyButton.m
//  自定义Navigation和ViewController
//
//  Created by Ralbatr on 14-3-18.
//  Copyright (c) 2014年 Ralbatr. All rights reserved.
//

#import "MyButton.h"

@implementation MyButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithImage:(NSString *)imageName highlightedImage:(NSString *)highlightedImageName
{
    self = [self init];
    if (self) {
        self.imageName = imageName;
        self.highlightImageName = highlightedImageName;
    }
    return self;
}


- (id)initWithBackground:(NSString *)backgroundImageName
backgroundHightImageName:(NSString *)backgroundHightImageName
{
    self = [self init];
    if (self) {
        self.backgroundImageName = backgroundImageName;
        self.backgroundHightImageName = backgroundHightImageName;
    }
    return self;
}

- (void)loadImage
{
    [self setImage:[UIImage imageNamed:_imageName] forState:UIControlStateNormal];
    [self setImage:[UIImage imageNamed:_highlightImageName] forState:UIControlStateHighlighted];
    [self setBackgroundImage:[UIImage imageNamed:_backgroundImageName] forState:UIControlStateNormal];
    [self setBackgroundImage:[UIImage imageNamed:_backgroundHightImageName] forState:UIControlStateHighlighted];
}

@end
