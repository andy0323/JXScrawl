//
//  JXImageTransformFilter.h
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXImageFilter.h"

@interface JXImageTransformFilter : JXImageFilter
{
    @private
    CGAffineTransform _transform;
}

@property (nonatomic, assign) CGAffineTransform transform;

- (id)initWithImageComponent:(id<JXImageComponent>)component
                   transform:(CGAffineTransform)transform;
- (void)apply;

@end
