//
//  JXStandardCharacterBuilder.m
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXStandardCharacterBuilder.h"

@implementation JXStandardCharacterBuilder

- (JXCharacterBuilder *)buildStrength:(float)value
{
    _character.protection *= value;
    _character.power *= value;
    
    return [super buildStrength:value];
}

- (JXCharacterBuilder *)buildStamina:(float)value
{
    _character.protection *= value;
    _character.power *= value;
    
    return [super buildStamina:value];
}

- (JXCharacterBuilder *)buildIntelligence:(float)value
{
    _character.protection *= value;
    _character.power *= value;
    
    return [super buildIntelligence:value];
}

- (JXCharacterBuilder *)buildAgility:(float)value
{
    _character.protection *= value;
    _character.power *= value;
    
    return [super buildAgility:value];
}

- (JXCharacterBuilder *)buildAggressiveness:(float)value
{
    _character.protection *= value;
    _character.power *= value;
    
    return [super buildAggressiveness:value];
}

@end
