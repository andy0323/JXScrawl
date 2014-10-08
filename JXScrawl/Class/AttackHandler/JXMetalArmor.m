//
//  JXMetalArmor.m
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXMetalArmor.h"
#import "JXSwordAttack.h"

@implementation JXMetalArmor

- (void)handleAttack:(JXAttack *)attack
{
    if ([attack isKindOfClass:[JXSwordAttack class]]) {
        
        // 攻击没有通过这个盔甲
        NSLog(@"no damage from a sword attack!");
    
    }else {
    
        NSLog(@"I don't know thid attack: %@", [attack class]);
        [super handleAttack:attack];
    }
}


@end
