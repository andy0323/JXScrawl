//
//  JXScribble.h
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JXMark.h"

@interface JXScribble : NSObject<JXMark>
{
    @private
    id<JXMark> _parentMark;
}

- (void)addMark:(id<JXMark>)mark shouldAddToPreviousMark:(BOOL)shouldAddToPreviousMark;
- (void)removeMark:(id<JXMark>)mark;

@end
