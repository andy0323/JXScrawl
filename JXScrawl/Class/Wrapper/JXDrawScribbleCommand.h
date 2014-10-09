//
//  JXDrawScribbleCommand.h
//  JXScrawl
//
//  Created by andy on 10/9/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXCommand.h"
#import "JXScribble.h"

@interface JXDrawScribbleCommand : JXCommand
{
    @private
    JXScribble *_scribble;
    id<JXMark> _mark;
    BOOL _shouldAddToPreviousMark;
}

- (void)execute;
- (void)undo;


@end
