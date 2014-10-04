//
//  JXConsoleController.h
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JXConsoleEmulator.h"
#import "JXConsoleCommands.h"

@interface JXConsoleController : NSObject
{
    @private
    JXConsoleEmulator *_emulator;
}

@property (nonatomic, strong) JXConsoleEmulator *_emulator;

- (void)setCommand:(JXConsoleCommand)command;

@end
