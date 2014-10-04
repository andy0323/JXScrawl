//
//  JXBrandingFactory.m
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXBrandingFactory.h"
#import "JXAcmeBrandingFactory.h"
#import "JXSierraBrandingFactory.h"

@implementation JXBrandingFactory

+ (JXBrandingFactory *)factory
{
#if defined (USE_ACME)
    return [[JXAcmeBrandingFactory alloc] init];;
#elif defined (USE_SIERRA)
    return [[JXSierraBrandingFactory alloc] init];;
#else
    return nil;
#endif
}


- (UIView *)brandedView
{
    return nil;
}

- (UIButton *)brandedMainButton
{
    return nil;
}

- (UIToolbar *)brandedToolbar
{
    return nil;
}

@end
