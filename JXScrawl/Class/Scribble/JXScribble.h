//
//  JXScribble.h
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JXMark.h"
#import "JXScribbleMemento.h"

@interface JXScribble : NSObject<JXMark>
{
    @private
    id<JXMark> _parentMark;
    id<JXMark> _incrementalMark;
}

// 管理Mark的方法
- (void)addMark:(id<JXMark>)mark shouldAddToPreviousMark:(BOOL)shouldAddToPreviousMark;
- (void)removeMark:(id<JXMark>)mark;

// 备忘录用的方法
- (id)initWithMemento:(JXScribbleMemento *)memento;
+ (JXScribble *)scribbleWithMemento:(JXScribbleMemento *)memento;
- (JXScribbleMemento *)scribbleMemento;
- (JXScribbleMemento *)scribbleMementoWithCompleteSnapshot:(BOOL)hasCompleteSnaphot;
- (void)attachStateFromMemento:(JXScribbleMemento *)memento;

@end
