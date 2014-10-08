//
//  JXCrystalShield.m
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXCrystalShield.h"
#import "JXMagicFireAttack.m"

@implementation JXCrystalShield

- (void)handleAttack:(JXAttack *)attack
{
    if ([attack isKindOfClass:[JXMagicFireAttack class]]) {
        
        // 攻击没有通过这个盾牌
    
    }else {
        
        // 不识别该类型攻击
        [super handleAttack:attack];
    }
}

@end
