//
//  JXImageFilter.m
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXImageFilter.h"

@implementation JXImageFilter

- (id)initWithImageComponent:(id<JXImageComponent>)component
{
    if (self = [super init]) {
        // 保存ImaheComponent
        [self setComponent:component];
    }
    return self;
}

- (void)apply
{
    // 应该有子类重载, 应用真正的滤镜
}

- (id)forwardingTargetForSelector:(SEL)aSelector
{
    NSString *selectorName = NSStringFromSelector(aSelector);
    if ([selectorName hasPrefix:@"draw"]) {
        [self apply];
    }
    return _component;
}


@end
