//
//  JXReubenSandwich.h
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXAnySandwich.h"

@interface JXReubenSandwich : JXAnySandwich
{

}

- (void)prepareBread;
- (void)addMeat;
- (void)addCondiments;
- (void)extraStep;

// 三明治特有操作
- (void)cutRyeBread;
- (void)addCornBeef;
- (void)addSauerkraut;
- (void)addThousandIslandDressing;
- (void)addSwissCheese;
- (void)grillIt;

@end
