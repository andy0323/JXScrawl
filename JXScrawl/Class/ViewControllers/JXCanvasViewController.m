//
//  QBaseCanvasViewController.m
//  iOS_设计模式
//
//  Created by andy on 10/3/14.
//  Copyright (c) 2014 streakq. All rights reserved.
//

#import "JXCanvasViewController.h"

@interface JXCanvasViewController ()

@end

@implementation JXCanvasViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    JXCanvasViewGenerator *defaultGenerator = [[JXCanvasViewGenerator alloc] init];
    
    [self loadCanvasViewWithGenerator:defaultGenerator];
}

#pragma mark -
#pragma mark - Loading a CanvasView from a CanvasViewGenerator

- (void)loadCanvasViewWithGenerator:(JXCanvasViewGenerator *)generator
{
    [_canvasView removeFromSuperview];
    CGRect frame = CGRectMake(0, 0, 320, 436);
    JXCanvasView *canvasView = [generator canvasViewWithFrame:frame];
    self.canvasView = canvasView;
    [self.view addSubview:_canvasView];
}

@end
