//
//  JXChasingGame.h
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JXStandardCharacterBuilder.h"

@interface JXChasingGame : NSObject
{
    
}

- (JXCharacter *)createPlayer:(JXCharacterBuilder *)builder;
- (JXCharacter *)createEnemy:(JXCharacterBuilder *)builder;

@end
