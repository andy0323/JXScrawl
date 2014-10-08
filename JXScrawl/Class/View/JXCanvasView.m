//
//  JXCanvasView.m
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXCanvasView.h"

@implementation JXCanvasView

- (void)drawRect:(CGRect)rect
{
    // 绘图代码
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // 创建renderer 访问者
    JXMarkRenderer *markRenderer = [[JXMarkRenderer alloc] initWithCGContext:context];
    
    // 把renderer沿着mark组合结构传递
    [_mark accessMarkVisitor:markRenderer];
}

@end
