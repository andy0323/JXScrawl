//
//  JXMarkRenderer.h
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JXMarkVisitor.h"
#import "JXDot.h"
#import "JXVertex.h"
#import "JXStroke.h"

@interface JXMarkRenderer : NSObject<JXMarkVisitor>
{
    @private
    BOOL _shouldMoveContextToDot;
    
    @protected
    CGContextRef _context;
}

- (id)initWithCGContext:(CGContextRef)context;

- (void)visitMark:(id<JXMark>)mark;
- (void)visitDot:(JXDot *)dot;
- (void)visitVertex:(JXVertex *)vertex;
- (void)visitStroke:(JXStroke *)stroke;

@end
