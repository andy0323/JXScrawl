//
//  QBaseMark.h
//  iOS_设计模式
//
//  Created by andy on 10/3/14.
//  Copyright (c) 2014 streakq. All rights reserved.
//

#import <Foundation/Foundation.h>

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

@end
