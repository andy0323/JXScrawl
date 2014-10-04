//
//  JXCharacterBuilder.m
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXCharacterBuilder.h"

@implementation JXCharacterBuilder

- (JXCharacterBuilder *)buildNewCharacter
{
    _character = nil;
    _character = [[JXCharacter alloc] init];
  
    return self;
}

- (JXCharacterBuilder *)buildStrength:(float)value
{
    _character.strength = value;
    return self;
}

- (JXCharacterBuilder *)buildStamina:(float)value
{
    _character.stramina = value;
    return self;
}

- (JXCharacterBuilder *)buildIntelligence:(float)value
{
    _character.intelligence = value;
    return self;
}

- (JXCharacterBuilder *)buildAgility:(float)value
{
    _character.agility = value;
    return self;
}

- (JXCharacterBuilder *)buildAggressiveness:(float)value
{
    _character.aggressiveness = value;
    return self;
}
@end
