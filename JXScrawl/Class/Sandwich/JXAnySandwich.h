//
//  JXAnySandwich.h
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JXAnySandwich : NSObject
{

}

- (void)make;

// 制作三明治的步骤
- (void)prepareBread;
- (void)putBreadOnPlate;
- (void)addMeat;
- (void)addCondiments;
- (void)extraStep;
- (void)serve;

@end
