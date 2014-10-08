//
//  QBaseDot.m
//  iOS_设计模式
//
//  Created by andy on 10/3/14.
//  Copyright (c) 2014 streakq. All rights reserved.
//

#import "JXDot.h"

@implementation JXDot

#pragma mark -
#pragma mark - NSCopying delegate method 

- (id)copyWithZone:(NSZone *)zone
{
    JXDot *dotCopy = [[[self class] allocWithZone:zone] initWithLocation:_location];
    dotCopy.color = [UIColor colorWithCGColor:[self.color CGColor]];
    dotCopy.size = _size;
    
    return dotCopy;
}


/**
 *  在当前上下文中, 能够按照 (位置 & 颜色 & 大小) 绘制一个椭圆点
 */
- (void)drawWithContext:(CGContextRef)context
{
    CGFloat x = self.location.x;
    CGFloat y = self.location.y;
    CGFloat frameSize = self.size;
    CGRect frame = CGRectMake(x, y, frameSize, frameSize);
    
    CGContextSetFillColorWithColor(context, [self.color CGColor]);
    CGContextFillEllipseInRect(context, frame);
}

- (void)accessMarkVisitor:(id<JXMarkVisitor>)visitor
{
    [visitor visitDot:self];
}

@end
