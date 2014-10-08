//
//  JXHamburger.h
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXAnySandwich.h"

@interface JXHamburger : JXAnySandwich
{

}

- (void)prepareBread;
- (void)addMeat;
- (void)addCondiments;

// 汉堡包的特有方法
- (void)getBurgerBun;
- (void)addKeychup;
- (void)addMustard;
- (void)addBeefPatty;
- (void)addCheese;
- (void)addPickles;

@end
