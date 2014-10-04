//
//  JXConsoleCommands.h
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JXConsoleCommands.h"

@interface JXConsoleEmulator : NSObject
{

}

- (void)loadInstructionsForCommand:(JXConsoleCommand)command;
- (void)executeInstructions;

@end
