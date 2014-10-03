//
//  QBaseStroke.h
//  iOS_设计模式
//
//  Created by andy on 10/3/14.
//  Copyright (c) 2014 streakq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JXMark.h"
/**
 *  线条
 */
@interface JXStroke : NSObject <JXMark, NSCopying>
{
    @private
    UIColor *_color;
    CGFloat _size;
    NSMutableArray *_children;
}
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign, readonly) NSInteger count;
@property (nonatomic, assign, readonly) id<JXMark> lastChild;

- (void)addMark:(id<JXMark>)mark;
- (void)removeMark:(id<JXMark>)mark;
- (id<JXMark>)childMarkAtIndex:(NSInteger)index;
- (id)copyWithZone:(NSZone *)zone;

@end
