//
//  UIImage+BaseFilter.m
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "UIImage+BaseFilter.h"

@implementation UIImage (BaseFilter)

- (CGContextRef)beginContext
{
    // 以目标尺寸创建一个图形上下文
    CGSize size = [self size];
    if (NULL != UIGraphicsBeginImageContextWithOptions) {
        UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    }
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    return context;
}

- (UIImage *)getImageFromCurrentImageContext
{
    [self drawAtPoint:CGPointZero];
    
    // 从当前上下文获取UIImage
    UIImage *imageOut = UIGraphicsGetImageFromCurrentImageContext();
    
    return imageOut;
}

- (void)endContext
{
    UIGraphicsEndImageContext();
}



@end
