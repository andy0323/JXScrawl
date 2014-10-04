//
//  JXCharacter.m
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXCharacter.h"

@implementation JXCharacter

- (id)init
{
    if (self = [super init]) {
        
        _protection = 1.0;
        _power = 1.0;
        _strength = 1.0;
        _stramina = 1.0;
        _intelligence = 1.0;
        _agility = 1.0;
        _aggressiveness = 1.0;
        
    }
    return self;
}

@end
