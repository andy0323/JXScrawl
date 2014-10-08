//
//  JXAttackHandler.h
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JXAttack.h"

@interface JXAttackHandler : NSObject
{
    @private
    JXAttackHandler *_nextAttackHandler;
}

@property (nonatomic, strong) JXAttackHandler *nextAttackHandler;

- (void)handleAttack:(JXAttack *)attack;

@end
