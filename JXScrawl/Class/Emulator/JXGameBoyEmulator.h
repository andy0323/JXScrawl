//
//  JXGameBoyEmulator.h
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXConsoleEmulator.h"

@interface JXGameBoyEmulator : JXConsoleEmulator
{
    
}

- (void)loadInstructionsForCommand:(JXConsoleCommand)command;
- (void)executeInstructions;

@end
