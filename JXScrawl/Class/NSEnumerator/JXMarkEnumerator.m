//
//  JXMarkEnumerator.m
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXMarkEnumerator.h"
#import "JXEnumerator+Private.h"

@implementation JXMarkEnumerator

- (NSArray *)allObjects
{
    // 返回还未访问的Mark节点数组
    // 也就是栈中的剩余元素
    return [[_stack reverseObjectEnumerator] allObjects];
}

- (id)nextObject
{
    return [_stack pop];
}

#pragma mark -
#pragma mark - Private Methods

- (id)initWithMark:(id<JXMark>)mark
{
    if (self = [super init]) {
        _stack = [[NSMutableArray alloc] initWithCapacity:[mark count]];
        
        // 后序遍历整个Mark聚合体
        // 然后把单个Mark加到私有栈中
        [self traverseAndBuildStackWithMark:mark];
    }
    
    return self;
}

- (void)traverseAndBuildStackWithMark:(id<JXMark>)mark
{
    // 把后序遍历压入栈中
    if (mark == nil) {
        return;
    }
    
    [_stack push:mark];
    
    NSInteger index = [mark count];
    id<JXMark> childMark;
    while ((childMark = [mark childMarkAtIndex:--index])) {
        [self traverseAndBuildStackWithMark:childMark];
    }
}

@end
