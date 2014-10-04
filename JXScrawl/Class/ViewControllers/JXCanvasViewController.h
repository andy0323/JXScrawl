//
//  QBaseCanvasViewController.h
//  iOS_设计模式
//
//  Created by andy on 10/3/14.
//  Copyright (c) 2014 streakq. All rights reserved.
//

#import "JXViewController.h"
#import "JXCanvasView.h"
#import "JXCanvasViewGenerator.h"

/**
 *  包含主画布视图, 用户可以用手指在盖世兔中涂鸦
 */
@interface JXCanvasViewController : JXViewController
{
    @private
    JXCanvasView *_canvasView;   // 画布视图
}
@property (nonatomic, strong) UIColor *strokenColor;
@property (nonatomic, strong) JXCanvasView *canvasView;

- (void)loadCanvasViewWithGenerator:(JXCanvasViewGenerator *)generator;

@end
