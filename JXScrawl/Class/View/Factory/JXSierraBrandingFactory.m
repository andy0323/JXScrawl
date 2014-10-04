//
//  JXSierraBrandingFactory.m
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXSierraBrandingFactory.h"
#import "JXSierraView.h"
#import "JXSierraMainButton.h"
#import "JXSierraToolbar.h"

@implementation JXSierraBrandingFactory

- (UIView *)brandedView
{
    return [[JXSierraView alloc] init];
}

- (UIButton *)brandedMainButton
{
    return [[JXSierraMainButton alloc] init];
}

- (UIToolbar *)brandedToolbar
{
    return [[JXSierraToolbar alloc] init];
}


@end
