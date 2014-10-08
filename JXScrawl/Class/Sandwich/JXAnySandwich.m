//
//  JXAnySandwich.m
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXAnySandwich.h"

@implementation JXAnySandwich

- (void)make
{
    [self prepareBread];
    [self putBreadOnPlate];
    [self addMeat];
    [self addCondiments];
    [self serve];
}

- (void)putBreadOnPlate
{
    // 做任何三明治都要先把面包放在盘子上
}

- (void)serve
{
    // 任何三明治做好了都要上桌
}

- (void)extraStep
{

}

#pragma mark -
#pragma makr - Details will be handled by subclasses

- (void)prepareBread
{
    // 要保证子类重载这个方法
    [NSException raise:NSInternalInconsistencyException format:@"You must orride %@ in a subclass", NSStringFromSelector(_cmd)];
}

- (void)addMeat
{
    // 保证子类重载这个方法
    [NSException raise:NSInternalInconsistencyException format:@"You must orride %@ in a subclass", NSStringFromSelector(_cmd)];
}

- (void)addCondiments
{
    // 要保证子类重载这个方法
    [NSException raise:NSInternalInconsistencyException format:@"You must orride %@ in a subclass", NSStringFromSelector(_cmd)];
}

@end
