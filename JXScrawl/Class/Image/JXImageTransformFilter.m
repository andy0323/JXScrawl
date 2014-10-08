//
//  JXImageTransformFilter.m
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXImageTransformFilter.h"

@implementation JXImageTransformFilter

- (id)initWithImageComponent:(id<JXImageComponent>)component transform:(CGAffineTransform)transform
{
    if (self = [super initWithImageComponent:component]) {
        [self setTransform:transform];
    }
    
    return self;
}

- (void)apply
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // 设置变换
    CGContextConcatCTM(context, _transform);
}

@end
