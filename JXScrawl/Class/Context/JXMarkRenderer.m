//
//  JXMarkRenderer.m
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXMarkRenderer.h"

@implementation JXMarkRenderer

- (id)initWithCGContext:(CGContextRef)context
{
    if (self = [super init]) {
        _context = context;
        _shouldMoveContextToDot = YES;
    }
    
    return self;
}

- (void)visitMark:(id<JXMark>)mark
{
    // 默认行为
}

- (void)visitDot:(JXDot *)dot
{
    CGFloat x = [dot location].x;
    CGFloat y = [dot location].y;
    CGFloat frameSize = [dot size];
    CGRect frame = CGRectMake(x - frameSize/2.0,
                              y - frameSize/2.0,
                              frameSize,
                              frameSize);
    CGContextSetFillColorWithColor(_context, [[dot color] CGColor]);
    CGContextFillEllipseInRect(_context, frame);
}

- (void)visitVertex:(JXVertex *)vertex
{
    CGFloat x = [vertex location].x;
    CGFloat y = [vertex location].y;
    
    if (_shouldMoveContextToDot) {
    
        CGContextMoveToPoint(_context, x, y);
        _shouldMoveContextToDot = NO;
    
    }else {
        
        CGContextAddLineToPoint(_context, x, y);
    }
}

- (void)visitStroke:(JXStroke *)stroke
{
    CGContextSetStrokeColorWithColor(_context, [[stroke color] CGColor]);
    CGContextSetLineWidth(_context, [stroke size]);
    CGContextSetLineCap(_context, kCGLineCapRound);
    CGContextStrokePath(_context);
    _shouldMoveContextToDot = YES;
}

@end
