//
//  QBaseStroke.h
//  iOS_设计模式
//
//  Created by andy on 10/3/14.
//  Copyright (c) 2014 streakq. All rights reserved.
//

#import "JXMark.h"
#import "JXMarkVisitor.h"

/**
 *  顶点
 */
@interface JXVertex : NSObject<JXMark, NSCopying>
{
    @protected
    CGPoint _location;
}
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, assign, readonly) NSInteger count;
@property (nonatomic, assign, readonly) id<JXMark> lastChild;

- (id)initWithLocation:(CGPoint)location;
- (void)addMark:(id<JXMark>)mark;
- (void)removeMark:(id<JXMark>)mark;
- (id<JXMark>)childMarkAtIndex:(NSInteger)index;

- (id)copyWithZone:(NSZone *)zone;

- (void)accessMarkVisitor:(id<JXMarkVisitor>)visitor;

@end
