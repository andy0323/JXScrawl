//
//  JXCharacterBuilder.h
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JXCharacter.h"

@interface JXCharacterBuilder : NSObject
{
    @protected
    JXCharacter *_character;
}

@property (nonatomic, strong, readonly) JXCharacter *character;

- (JXCharacterBuilder *)buildNewCharacter;
- (JXCharacterBuilder *)buildStrength:(float)value;
- (JXCharacterBuilder *)buildStamina:(float)value;
- (JXCharacterBuilder *)buildIntelligence:(float)value;
- (JXCharacterBuilder *)buildAgility:(float)value;
- (JXCharacterBuilder *)buildAggressiveness:(float)value;

@end
