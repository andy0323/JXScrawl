//
//  JXFlowerView.m
//  JXScrawl
//
//  Created by andy on 10/9/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXFlowerView.h"
#import "JXFlowerFactory.h"

@implementation JXFlowerView

- (void)drawRect:(CGRect)rect
{
    [self.image drawInRect:rect];

    // 绘图代码
    for (NSValue *stateValue in _flowerList) {
        ExtrinsicFlowerState state;
        [stateValue getValue:&state];
        
        UIView *flowerView = state.flowerView;
        CGRect area = state.area;
        
        [flowerView drawRect:area];
    }
}

@end
