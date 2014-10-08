//
//  JXDecoratorViewController.m
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXDecoratorViewController.h"
#import "JXDecoratorView.h"
#import "UIImage+Transform.h"
#import "UIImage+Shadow.h"

@interface JXDecoratorViewController ()

@end

@implementation JXDecoratorViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // 加载原始图像
    UIImage *image = [UIImage imageNamed:@""];
    
    // 创造一个变换
    CGAffineTransform rotateTransform = CGAffineTransformMakeRotation(-M_PI/4.0);
    CGAffineTransform translateTransform = CGAffineTransformMakeTranslation(
                                                -image.size.width/2.0,
                                                -image.size.height/8.0);
    CGAffineTransform finalTransform = CGAffineTransformConcat(rotateTransform, translateTransform);
    
    // 真正的子类的方式
    id<JXImageComponent> transformedImage = [[JXImageTransformFilter alloc] initWithImageComponent:image transform:finalTransform];
    
    id<JXImageComponent> finalImage = [[JXShadowFilter alloc] initWithImageComponent:transformedImage];

    // 用滤镜处理过的图像
    // 创建新的DecoratorView
    JXDecoratorView *devoratorView = [[JXDecoratorView alloc] initWithFrame:self.view.bounds];
    [devoratorView setImage:finalImage];
    [self.view addSubview:devoratorView];
    
    finalImage = [[image imageWithTransform:finalTransform] imageWithDropShadow];
}

@end
