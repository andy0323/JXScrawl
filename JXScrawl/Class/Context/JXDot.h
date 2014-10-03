//
//  QBaseDot.h
//  iOS_设计模式
//
//  Created by andy on 10/3/14.
//  Copyright (c) 2014 streakq. All rights reserved.
//

#import "JXVertex.h"
/**
 *  点
 */
@interface JXDot : JXVertex
{
    @private
    UIColor *_color;
    CGFloat _size;
}
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;

- (id)copyWithZone:(NSZone *)zone;

@end
