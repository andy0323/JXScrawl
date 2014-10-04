//
//  JXStandardCharacterBuilder.h
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXCharacterBuilder.h"

@interface JXStandardCharacterBuilder : JXCharacterBuilder

- (JXCharacterBuilder *)buildStrength:(float)value;
- (JXCharacterBuilder *)buildStamina:(float)value;
- (JXCharacterBuilder *)buildIntelligence:(float)value;
- (JXCharacterBuilder *)buildAgility:(float)value;
- (JXCharacterBuilder *)buildAggressiveness:(float)value;

@end
