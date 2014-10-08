//
//  UIImage+Shadow.m
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "UIImage+Shadow.h"
#import "UIImage+BaseFilter.h"

@implementation UIImage (Shadow)

- (UIImage *)imageWithDropShadow
{
    CGContextRef context = [self beginContext];
    
    // 设置阴影
    CGSize offset = CGSizeMake(-25, 15);
    CGContextSetShadow(context, offset, 20.0);
    
    // 向上下文绘制原始图像
    UIImage *imageOut = [self getImageFromCurrentImageContext];

    [self endContext];

    return imageOut;
}

@end
