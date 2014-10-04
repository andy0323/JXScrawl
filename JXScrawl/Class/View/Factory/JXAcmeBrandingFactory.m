//
//  JXAcmeBrandingFactory.m
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXAcmeBrandingFactory.h"
#import "JXAcmeView.h"
#import "JXAcmeMainButton.h"
#import "JXAcmeToolbar.h"

@implementation JXAcmeBrandingFactory

- (UIView *)brandedView
{
    return [[JXAcmeView alloc] init];
}

- (UIButton *)brandedMainButton
{
    return [[JXAcmeMainButton alloc] init];
}

- (UIToolbar *)brandedToolbar
{
    return [[JXAcmeToolbar alloc] init];
}

@end
