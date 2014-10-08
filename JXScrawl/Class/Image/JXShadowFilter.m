//
//  JXShadowFilter.m
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXShadowFilter.h"

@implementation JXShadowFilter

- (void)apply
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // 设置阴影效果
    CGSize offset = CGSizeMake(-25, 15);
    CGContextSetShadow(context, offset, 20.0);
}


@end
