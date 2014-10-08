//
//  QBaseMark.h
//  iOS_设计模式
//
//  Created by andy on 10/3/14.
//  Copyright (c) 2014 streakq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JXMarkVisitor.h"

@protocol JXMarkVisitor;

@protocol JXMark <NSObject>
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, assign, readonly) NSInteger count; // 子节点个数
@property (nonatomic, assign, readonly) id<JXMark> lastChild;

- (id)copy;
- (void)addMark:(id<JXMark>) mark;
- (void)removeMark:(id<JXMark>)mark;
- (id<JXMark>)childMarkAtIndex:(NSInteger)index;


- (void)drawWithContext:(CGContextRef)context;

- (NSEnumerator *)enumerator;

// 用于实现内部迭代器
- (void)enumerateMarksUsingBlock:(void (^)(id<JXMark> item, BOOL *stop))block;

- (void)accessMarkVisitor:(id<JXMarkVisitor>)visitor;

@end
