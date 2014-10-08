//
//  JXImageFilter.h
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JXImageComponent.h"
#import "UIImage+ImageComponent.h"

@interface JXImageFilter : NSObject
{
    @private
    id<JXImageComponent> _component;
}

@property (nonatomic, retain) id<JXImageComponent> component;

- (void)apply;
- (id)initWithImageComponent:(id<JXImageComponent>)component;
- (id)forwardingTargetForSelector:(SEL)aSelector;

@end
