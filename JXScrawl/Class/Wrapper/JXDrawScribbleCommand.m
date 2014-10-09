//
//  JXDrawScribbleCommand.m
//  JXScrawl
//
//  Created by andy on 10/9/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXDrawScribbleCommand.h"

@implementation JXDrawScribbleCommand

- (void)execute
{
    if (!_userInfo) {
        return;
    }
    
    _scribble = [_userInfo objectForKey:@"ScribbleObjectUserInfoKey"];
    _mark = [_userInfo objectForKey:@"MarkObjectUserInfoKey"];
    _shouldAddToPreviousMark = [(NSNumber *)[_userInfo objectForKey:@"AddToPreviousMarkUserInfoKey"] boolValue];
    
    [_scribble addMark:_mark shouldAddToPreviousMark:_shouldAddToPreviousMark];
}

- (void)undo
{
    [_scribble removeMark:_mark];
}


@end
