//
//  JXImageComponent.h
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol JXImageComponent <NSObject>

// 截图这些UIImage的方法, 插入附加行为
@optional
- (void)drowAsPatternInRect:(CGRect)rect;
- (void)drowAtPoint:(CGPoint)point;
- (void)drowAtPoint:(CGPoint)point
          blendMode:(CGBlendMode)blendMode
              alpha:(CGFloat)alpha;
- (void)drowInRect:(CGRect)rect;
- (void)drowInRect:(CGPoint)rect
         blendMode:(CGBlendMode)blendMode
             alpha:(CGFloat)alpha;

@end
