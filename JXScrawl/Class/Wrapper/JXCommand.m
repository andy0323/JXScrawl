//
//  JXCommand.m
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXCommand.h"

@implementation JXCommand

- (void)execute
{
    // 应该抛出异常
}

- (void)undo
{
    // 什么都不在做
    // 子类需要重载这个方法, 执行实际撤销
}


@end
