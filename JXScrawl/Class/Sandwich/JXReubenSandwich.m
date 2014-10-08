//
//  JXReubenSandwich.m
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXReubenSandwich.h"

@implementation JXReubenSandwich

- (void)prepareBread
{
    [self cutRyeBread];
}

- (void)addMeat
{
    [self addCornBeef];
}

- (void)addCondiments
{
    [self addSauerkraut];
    [self addThousandIslandDressing];
    [self addSwissCheese];
}

- (void)extraStep
{
    [self grillIt];
}
#pragma mark -
#pragma mark - ReubenSandwich Specofoc Methods

- (void)cutRyeBread
{
    // 需要两片黑白面包
}

- (void)addCornBeef
{
    // 添加大量腌制牛肉
}

- (void)addSauerkraut
{
    // 添加德国酸菜
}

- (void)addThousandIslandDressing
{
    // 添加千岛酱
}

- (void)addSwissCheese
{
    // 上等瑞士奶酪
}

- (void)grillIt
{
    // 最后要把它烤一下
}

@end
