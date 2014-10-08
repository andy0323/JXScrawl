//
//  UIImage+BaseFilter.h
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (BaseFilter)

- (CGContextRef)beginContext;
- (UIImage *)getImageFromCurrentImageContext;
- (void)endContext;

@end
