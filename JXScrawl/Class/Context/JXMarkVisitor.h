//
//  JXMarkVisitor.h
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JXMark.h"

@protocol JXMark;
@class JXDot, JXVertex, JXStroke;

@protocol JXMarkVisitor <NSObject>

- (void)visitMark:(id<JXMark>)mark;
- (void)visitDot:(JXDot *)dot;
- (void)visitVertex:(JXVertex *)vertex;
- (void)visitStroke:(JXStroke *)stroke;

@end
