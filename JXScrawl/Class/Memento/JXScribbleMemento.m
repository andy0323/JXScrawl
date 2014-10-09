//
//  JXScribbleMemento.m
//  JXScrawl
//
//  Created by andy on 10/9/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXScribbleMemento.h"
#import "JXScribbleMemento+Friend.h"

@implementation JXScribbleMemento

- (NSData *)data
{
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:_mark];
    return data;
}

+ (JXScribbleMemento *)mementoWithData:(NSData *)data
{
    // 如果data不是有效文档, 就引发NSInvalidArchiveOperationException一场
    id<JXMark>retoredMark = (id<JXMark>)[NSKeyedUnarchiver unarchiveObjectWithData:data];
    JXScribbleMemento *memento = [[JXScribbleMemento alloc] initWithMark:retoredMark];
    
    return memento;
}

#pragma mark -
#pragma mark - Private Methods

- (id)initWithMark:(id<JXMark>)mark
{
    if (self = [super init]) {
        self.mark = mark;
    }
    
    return self;
}
@end
