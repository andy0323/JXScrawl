//
//  QBaseCanvasViewController.h
//  iOS_设计模式
//
//  Created by andy on 10/3/14.
//  Copyright (c) 2014 streakq. All rights reserved.
//

#import "JXViewController.h"
#import "JXScribble.h"
#import "JXCanvasView.h"
#import "JXCanvasViewGenerator.h"

/**
 *  包含主画布视图, 用户可以用手指在该视图中涂鸦
 */
@interface JXCanvasViewController : JXViewController
{
    @private
    JXScribble *_scribble;
    JXCanvasView *_canvasView;   // 画布视图

    CGPoint _startPoint;
    UIColor *_strokeColor;
    CGFloat _strokeSize;
    
    NSMutableArray *_redoStack;
    NSMutableArray *_undoStack;
    NSInteger _levelsOfUndo;
}

@property (nonatomic, strong) JXCanvasView *canvasView;
@property (nonatomic, strong) JXScribble *scribble;
@property (nonatomic, strong) UIColor *strokenColor;
@property (nonatomic, assign) CGFloat strokeSize;

- (void)loadCanvasViewWithGenerator:(JXCanvasViewGenerator *)generator;

@end
