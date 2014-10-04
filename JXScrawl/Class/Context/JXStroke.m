//
//  QBaseStroke.m
//  iOS_设计模式
//
//  Created by andy on 10/3/14.
//  Copyright (c) 2014 streakq. All rights reserved.
//

#import "JXStroke.h"

@implementation JXStroke
@dynamic location;

- (id)init
{
    if (self = [super init]) {
        _children = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)setLocation:(CGPoint)location
{

}

/**
 *  返回第一个结点的位置
 */
- (CGPoint)location
{
    if (_children.count > 0) {
        return ((id<JXMark>)[_children objectAtIndex:0]).location;
    }
    return CGPointZero;
}

- (void)addMark:(id<JXMark>)mark
{
    [_children addObject:mark];
}

/**
 *  如果mark在数组中, 则将其移除并且返回
 *  否则, 让每个节点去找它
 */
- (void)removeMark:(id<JXMark>)mark
{
    if ([_children containsObject:mark]) {
    
        [_children removeObject:mark];
    
    }else {
    
        [_children makeObjectsPerformSelector:@selector(removeMark:)
                                   withObject:mark];
    }
}

- (id<JXMark>)childMarkAtIndex:(NSInteger)index
{
    if (index > _children.count) {
        return nil;
    }
    
    return [_children objectAtIndex:index];
}

- (id<JXMark>)lastChild
{
    if (_children.count > 0) {
        return _children.lastObject;
    }
    return nil;
}

#pragma mark - 
#pragma mark - NSCopying method

- (id)copyWithZone:(NSZone *)zone
{
    JXStroke *strokeCopy = [[[self class] allocWithZone:zone] init];
    strokeCopy.color = [UIColor colorWithCGColor:_color.CGColor];
    strokeCopy.size = _size;
    
    for (id<JXMark> child in _children) {
        id<JXMark> childCopy = [child copy];
        [strokeCopy addMark:childCopy];
    }
    
    return strokeCopy;
}

- (void)drawWithContext:(CGContextRef)context
{
    CGContextMoveToPoint(context, self.location.x, self.location.y);
    
    for (id <JXMark> mark in _children) {
        [mark drawWithContext:context];
    }
    
    CGContextSetLineWidth(context, self.size);
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetStrokeColorWithColor(context, [self.color CGColor]);
    CGContextStrokePath(context);
}

@end
