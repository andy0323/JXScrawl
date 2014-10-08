//
//  JXScribble.m
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXScribble.h"
#import "JXStroke.h"

/// 私有范畴, 提供Scribble对象访问的mark属性
@interface JXScribble ()
@property (nonatomic, strong) id<JXMark> mark;
@end


@implementation JXScribble

- (id)init
{
    if (self = [super init]) {
        // 父节点应该是个组合对象
        _parentMark = [[JXStroke alloc] init];
    }
    return self;
}

#pragma mark -
#pragma mark - Methods for Mark management

- (void)addMark:(id<JXMark>)mark shouldAddToPreviousMark:(BOOL)shouldAddToPreviousMark
{
    // 手工调用KVO
    [self willChangeValueForKey:@"mark"];

    // 如果标志为YES
    // 就把这个mark添加到前一个mark作为聚合体的一部分
    // 根据我们的设计, 它应该是根节点的最后一个子节点
    if (shouldAddToPreviousMark) {
        [[_parentMark lastChild] addMark:mark];
    }else {
        // 否则添加到父节点
        [_parentMark addMark:mark];
    }
    
    // 手工调用KVO
    [self didChangeValueForKey:@"mark"];
}

- (void)removeMark:(id<JXMark>)mark
{
    // 如果mark是父节点则什么都不做
    if (mark == _parentMark) {
        return;
    }
    
    // 手工调用KVO
    [self willChangeValueForKey:@"mark"];
    
    [_parentMark removeMark:mark];
    
    // 手工调用KVO
    [self didChangeValueForKey:@"mark"];
}


@end
