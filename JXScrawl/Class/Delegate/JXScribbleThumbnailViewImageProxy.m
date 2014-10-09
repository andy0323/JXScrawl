//
//  JXScribbleThumbnailViewImageProxy.m
//  JXScrawl
//
//  Created by andy on 10/9/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXScribbleThumbnailViewImageProxy.h"

/// 用于转发加载线程的私有范畴
@interface JXScribbleThumbnailViewImageProxy ()

- (void)forwardImageLoadingThread;

@end

@implementation JXScribbleThumbnailViewImageProxy
@dynamic imagePath;

// 如果不需要把对象显示在视图上, 客户端可以直接使用这个方法来转发真是的图像的加载
- (UIImage *)image
{
    if (_realImage == nil) {
        _realImage = [[UIImage alloc] initWithContentsOfFile:_imagePath];
    }
    
    return _realImage;
}

// 在不同的线程会建立转发的调用, 从真实图像加载实际内容
// 实际内容返回以前, drawRect: 会处理后台的家在过程, 并绘制一个展位图框
// 一旦实际内容加载完成, 就会用实际内容进行重画
- (void)drawRect:(CGRect)rect
{
    // 如果_realImageView中没有真实图像
    // 就绘制一幅白色图框, 作为展位图像
    if (_realImage == nil) {
        
        // 绘制代码
        CGContextRef context = UIGraphicsGetCurrentContext();
        
        // 使用虚线绘制展位图框
        // 虚线的化纤长度为10个用户空间单位
        // 画先之间的间隙为3个用户单位
        CGContextSetLineWidth(context, 10.0);
        const CGFloat dashLengths[2] = { 10, 3 };
        CGContextSetLineDash(context, 3, dashLengths, 2);
        CGContextSetStrokeColorWithColor(context, [[UIColor darkGrayColor] CGColor]);
        CGContextSetFillColorWithColor(context, [[UIColor lightGrayColor] CGColor]);
        CGContextAddRect(context, rect);
        CGContextDrawPath(context, kCGPathFillStroke);
    
        // 如果还没有加载实际内容
        // 就启动一个线程进行加载
        if (!_loadingThreadHasLaunched) {
            [self performSelectorInBackground:@selector(forwardImageLoadingThread)
                                   withObject:nil];
            _loadingThreadHasLaunched = YES;
        }
    
    }else {
        
        // 否则就向_realImage传递draw*:消息，让他绘制真实图像
        [_realImage drawInRect:rect];
    }
}

#pragma mark -
#pragma mark - A private method for an image forward loading thread

- (void)forwardImageLoadingThread
{
    // 转发实际内容加载
    [self image];

    // 使用刚加载的图像进行重画
    [self performSelectorInBackground:@selector(setNeedsDisplay) withObject:nil];
}

@end
