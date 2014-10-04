//
//  JXChasingGame.m
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXChasingGame.h"

@implementation JXChasingGame

- (JXCharacter *)createPlayer:(JXCharacterBuilder *)builder
{
    [builder buildNewCharacter];
    [builder buildStrength:80.0];
    [builder buildStamina:65.0];
    [builder buildIntelligence:75.0];
    [builder buildAgility:65.0];
    [builder buildAggressiveness:35.0];
    
    return [builder character];
}

- (JXCharacter *)createEnemy:(JXCharacterBuilder *)builder
{
    [builder buildNewCharacter];
    [builder buildStrength:80.0];
    [builder buildStamina:65.0];
    [builder buildIntelligence:35.0];
    [builder buildAgility:25.0];
    [builder buildAggressiveness:95.0];
    
    return [builder character];
}

@end
