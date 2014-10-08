//
//  JXCarDriver.m
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXCarDriver.h"

@implementation JXCarDriver

- (void)driveToLocation:(CGPoint)x
{
    // 启动计价器
    JXTaximeter *meter = [[JXTaximeter alloc] init];
    [meter start];
    
    // 操作车辆, 知道抵达位置x
    JXCar *car = [[JXCar alloc] init];
    [car releaseBrakes];
    [car changeGears];
    [car pressBrakes];
    
    // 当到达了位置x, 就停下车和计价器
    [car releaseAccelerator];
    [car pressBrakes];
    [meter stop];
}

@end
