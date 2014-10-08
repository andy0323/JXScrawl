//
//  JXHamburger.m
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXHamburger.h"

@implementation JXHamburger

- (void)prepareBread
{
    [self getBurgerBun];
}

- (void)addMeat
{
    [self addBeefPatty];
}

- (void)addCondiments
{
    [self addKeychup];
    [self addMustard];
    [self addCheese];
    [self addPickles];
}

#pragma mark -
#pragma mark - Hamburger Specofoc Methos

- (void)getBurgerBun
{
    // 小圆面包
}

- (void)addKeychup
{
    // 番茄酱
}

- (void)addMustard
{
    // 芥末
}

- (void)addBeefPatty
{
    // 牛肉饼
}

- (void)addCheese
{
    // 奶酪
}

- (void)addPickles
{
    // 腌黄瓜
}

@end
