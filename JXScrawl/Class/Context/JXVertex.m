//
//  QBaseStroke.m
//  iOS_设计模式
//
//  Created by andy on 10/3/14.
//  Copyright (c) 2014 streakq. All rights reserved.
//

#import "JXVertex.h"

@implementation JXVertex
@dynamic color, size;

- (id)initWithLocation:(CGPoint)location
{
    if (self = [super init]) {
        self.location = location;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super init]) {
        _location = [(NSValue *)[aDecoder decodeObjectForKey:@"VertexLocation"] CGPointValue];
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:[NSValue valueWithCGPoint:_location]
                  forKey:@"VertexLocation"];
}

#pragma mark -
#pragma mark - 默认属性什么都不处理

- (void)setColor:(UIColor *)color
{
    
}

- (UIColor *)color
{
    return nil;
};

- (void)setSize:(CGFloat)size
{
    
}

- (CGFloat)size
{
    return 0.0;
}

#pragma mark -
#pragma mark - Mark操作什么也不做

- (void)addMark:(id<JXMark>)mark
{

}

- (void)removeMark:(id<JXMark>)mark
{

}

- (id<JXMark>)childMarkAtIndex:(NSInteger)index
{
    return nil;
}

- (id<JXMark>)lastChild
{
    return nil;
}

- (NSInteger)count
{
    return 0;
}

- (NSEnumerator *)enumerator
{
    return nil;
}

#pragma mark -
#pragma mark - NSCopying method

- (id)copyWithZone:(NSZone *)zone
{
    return [[[self class] allocWithZone:zone] initWithLocation:_location];
}

- (void)drawWithContext:(CGContextRef)context
{
    CGFloat x = self.location.x;
    CGFloat y = self.location.y;
    
    CGContextAddLineToPoint(context, x, y);
}

- (void)accessMarkVisitor:(id<JXMarkVisitor>)visitor
{
    [visitor visitVertex:self];
}

@end
