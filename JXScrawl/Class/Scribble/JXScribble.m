//
//  JXScribble.m
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXScribble.h"
#import "JXStroke.h"
#import "JXScribbleMemento+Friend.h"

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
        _incrementalMark = mark;
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

    // 不需要保存incrementalMark引用, 因为他刚从父节点删除
    if (mark == _incrementalMark) {
        _incrementalMark = nil;
    }
    
    // 手工调用KVO
    [self didChangeValueForKey:@"mark"];
}

#pragma mark -
#pragma mark - Methods for memento

- (id)initWithMemento:(JXScribbleMemento *)memento
{
    if (self = [super init]) {
        if ([memento hasCompleteSnapshot]) {
            [self setMark:[memento mark]];
        }else {
            // 如果备忘录中只含有一个增量的Mark, 那就需要创建容纳他的父节点
            _parentMark = [[JXStroke alloc] init];
            [self attachStateFromMemento:memento];
        }
    }
    
    return self;
}

- (void)attachStateFromMemento:(JXScribbleMemento *)memento
{
    // 把来自备忘录对象的Mark附加到根节点
    [self addMark:[memento mark] shouldAddToPreviousMark:NO];
}

- (JXScribbleMemento *)scribbleMementoWithCompleteSnapshot:(BOOL)hasCompleteSnaphot
{
    id<JXMark> mementoMark = _incrementalMark;
    
    // 如果要求返回完整的快照, 就把它设置为parentMark
    if (hasCompleteSnaphot) {
       
        mementoMark = _parentMark;
    
    }else if (mementoMark == nil) {
        // 但是如果_incrementalMark为nil, 我们什么也做不了, 只要退出
        return nil;
    }
    
    JXScribbleMemento *memento = [[JXScribbleMemento alloc] initWithMark:mementoMark];
    [memento setHasCompleteSnapshot:hasCompleteSnaphot];
    
    return memento;
}

- (JXScribbleMemento *)scribbleMemento
{
    return [self scribbleMementoWithCompleteSnapshot:YES];
}

+ (JXScribble *)scribbleWithMemento:(JXScribbleMemento *)memento
{
    JXScribble *scribble = [[JXScribble alloc] initWithMemento:memento];
    return scribble;
}

@end
