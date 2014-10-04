//
//  JXTouchConsoleController.m
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXTouchConsoleController.h"
#import "JXConsoleEmulator.h"

@implementation JXTouchConsoleController

- (void)up
{
    [super setCommand:kConsoleCommandUp];
}

- (void)down
{
    [super setCommand:kConsoleCommanDown];
}

- (void)left
{
    [super setCommand:kConsoleCommandLeft];
}

- (void)right
{
    [super setCommand:kConsoleCommandRight];
}

- (void)select
{
    [super setCommand:kConsoleCommandSelect];
}

- (void)start
{
    [super setCommand:kConsoleCommandStart];
}

- (void)action1
{
    [super setCommand:kConsoleCommandAction1];
}

- (void)action2
{
    [super setCommand:kConsoleCommandAction2];
}

@end
