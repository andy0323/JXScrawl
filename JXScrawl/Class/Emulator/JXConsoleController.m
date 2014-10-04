//
//  JXConsoleController.m
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXConsoleController.h"

@implementation JXConsoleController

- (void)setCommand:(JXConsoleCommand)command
{
    [_emulator loadInstructionsForCommand:command];
    [_emulator executeInstructions];
}


@end
