//
//  MyButton.h
//  自定义Navigation和ViewController
//
//  Created by Ralbatr on 14-3-18.
//  Copyright (c) 2014年 Ralbatr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyButton : UIButton

@property (nonatomic,copy) NSString *imageName;
@property (nonatomic,copy) NSString *highlightImageName;
@property (nonatomic,copy) NSString *backgroundImageName;
@property (nonatomic,copy) NSString *backgroundHightImageName;

- (id)initWithImage:(NSString *)imageName highlightedImage:(NSString *)highlightedImageName;
- (id)initWithBackground:(NSString *)backgroundImageName
backgroundHightImageName:(NSString *)backgroundHightImageName;

@end
