//
//  JXAttackHandler.m
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXAttackHandler.h"

@implementation JXAttackHandler

- (void)handleAttack:(JXAttack *)attack
{
    [_nextAttackHandler handleAttack:attack];
}

@end
