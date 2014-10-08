//
//  UIImage+Transform.m
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "UIImage+Transform.h"
#import "UIImage+BaseFilter.h"

@implementation UIImage (Transform)

- (UIImage *)imageWithTransform:(CGAffineTransform)transform
{
    CGContextRef context = [self beginContext];
    
    // 设置变换
    CGContextConcatCTM(context, transform);
    
    // 向上下文绘制原始图像
    UIImage *imageOut = [self getImageFromCurrentImageContext];
    
    [self endContext];

    return imageOut;
}


@end
