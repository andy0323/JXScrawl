//
//  JXAttackHandlerViewController.m
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXAttackHandlerViewController.h"

#import "JXAttackHandler.h"
#import "JXAvatar.h"
#import "JXMetalArmor.h"
#import "JXCrystalShield.h"
#import "JXSwordAttack.h"
#import "JXMagicFireAttack.h"
#import "JXLightningAttack.h"

@interface JXAttackHandlerViewController ()

@end

@implementation JXAttackHandlerViewController


- (void)viewDidLoad
{
    [super viewDidLoad];

    // 创建新的人物
    JXAttackHandler *avatar = [[JXAvatar alloc] init];
    
    // 让他穿上金属盔甲
    JXAttackHandler *metalArmoredAvatar = [[JXMetalArmor alloc] init];
    [metalArmoredAvatar setNextAttackHandler:avatar];
    
    // 然后给金属盔甲中的人物增加一个水晶盾牌
    JXAttackHandler *superAvatar = [[JXCrystalShield alloc] init];
    [superAvatar setNextAttackHandler:metalArmoredAvatar];
    
    
    // 用剑攻击人物
    JXAttack *swordAttack = [[JXSwordAttack alloc] init];
    [superAvatar handleAttack:swordAttack];
    
    // 魔法火焰攻击
    JXAttack *magicFireAttack = [[JXMagicFireAttack alloc] init];
    [superAvatar handleAttack:magicFireAttack];
    
    // 闪电进行攻击
    JXAttack *lightningAttack = [[JXLightningAttack alloc] init];
    [superAvatar handleAttack:lightningAttack];    
}

@end
