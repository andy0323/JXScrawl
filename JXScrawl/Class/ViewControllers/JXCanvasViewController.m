//
//  QBaseCanvasViewController.m
//  iOS_设计模式
//
//  Created by andy on 10/3/14.
//  Copyright (c) 2014 streakq. All rights reserved.
//

#import "JXCanvasViewController.h"
#import "JXDot.h"
#import "JXStroke.h"

@interface JXCanvasViewController ()

@end

@implementation JXCanvasViewController

- (void)setScribble:(JXScribble *)scribble
{
    if (_scribble != scribble) {
        _scribble = scribble;

        // 将自己作为参观者添加到scribble
        // 观察其内部状态 Mark的任何状态
        [_scribble addObserver:self
                    forKeyPath:@"mark"
                       options: NSKeyValueObservingOptionInitial |
                                NSKeyValueObservingOptionNew
                       context:nil];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    JXCanvasViewGenerator *defaultGenerator = [[JXCanvasViewGenerator alloc] init];
    
    [self loadCanvasViewWithGenerator:defaultGenerator];


    JXScribble *scribble = [[JXScribble alloc] init];
    [self setScribble:scribble];
}

#pragma mark -
#pragma mark - Touch Event Handlers

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    _startPoint = [[touches anyObject] locationInView:_canvasView];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    CGPoint lastPoint = [[touches anyObject] previousLocationInView:_canvasView];
    
    // 如果这是手指的拖动, 就向涂鸦添加一个线条
    if (CGPointEqualToPoint(_startPoint, lastPoint)) {
        id<JXMark> newStroke = [[JXScribble alloc] init];
        [newStroke setColor:_strokeColor];
        [newStroke setSize:_strokeSize];
        [_scribble addMark:newStroke shouldAddToPreviousMark:NO];
    }
    
    // 把当前触摸作为定点添加到临时线条
    CGPoint thisPoint = [[touches anyObject] locationInView:_canvasView];
    JXVertex *vertex = [[JXVertex alloc] initWithLocation:thisPoint];
    [_scribble addMark:vertex shouldAddToPreviousMark:YES];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    CGPoint lastPoint = [[touches anyObject] previousLocationInView:_canvasView];
    CGPoint thisPoint = [[touches anyObject] locationInView:_canvasView];
    
    // 如果触摸从未移动 （拾起前一直在同一处）
    // 就向现有Stroke组合体添加一个点
    // 否则就把它未做最后一个定点添加到临时线条
    if (CGPointEqualToPoint(_startPoint, lastPoint)) {
        JXDot *singleDot = [[JXDot alloc] initWithLocation:thisPoint];
        [singleDot setColor:_strokeColor];
        [singleDot setSize:_strokeSize];
    
        [_scribble addMark:singleDot shouldAddToPreviousMark:NO];
    }
    
    // 再次重置起点
    _startPoint = CGPointZero;
    
    // 如果是线条的最后一个点
    // 就用不着画它
    // 因为用户看不出什么区别
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    // 其实不必再次重置起点
    // 但要以防万一
    _startPoint = CGPointZero;
}

#pragma mark -
#pragma mark - Scribble observer method

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if ([object isKindOfClass:[JXScribble class]] &&
        [keyPath isEqualToString:@"mark"]) {
        id<JXMark> mark = [change objectForKey:NSKeyValueChangeNewKey];
        [_canvasView setMark:mark];
        [_canvasView setNeedsDisplay];
    }
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


#pragma mark -
#pragma mark - 绘图/撤销绘图

- (NSInvocation *)drawScribbleInvocation
{
    NSMethodSignature *executeMethodSignature = [_scribble methodSignatureForSelector:@selector(addMark:shouldAddToPreviousMark:)];
    NSInvocation *drawInvocation = [NSInvocation invocationWithMethodSignature:executeMethodSignature];
    [drawInvocation setTarget:_scribble];
    [drawInvocation setSelector:@selector(addMark:shouldAddToPreviousMark:)];
    BOOL attachToPreviousMark = NO;
    [drawInvocation setArgument:&attachToPreviousMark atIndex:3];
    
    return drawInvocation;
}

- (NSInvocation *)undrawScribbleInvocation
{
    NSMethodSignature *unexecuteMethodSignature = [_scribble methodSignatureForSelector:@selector(removeMark:)];
    NSInvocation *undrawInvocation = [NSInvocation invocationWithMethodSignature:unexecuteMethodSignature];
    [undrawInvocation setTarget:_scribble];
    [undrawInvocation setSelector:@selector(removeMark:)];
    
    return undrawInvocation;
}

- (void)executeInvocation:(NSInvocation *)invocation withUndoInvocation:(NSInvocation *)undoInvocation
{
    [invocation retainArguments];
    
    [[self.undoManager prepareWithInvocationTarget:self] unexecuteInvocation:undoInvocation withRedoInvocation:invocation];
    
    [invocation invoke];
}

- (void)unexecuteInvocation:(NSInvocation *)invocation withRedoInvocation:(NSInvocation *)redoInvocation
{
    [[self.undoManager prepareWithInvocationTarget:self] executeInvocation:redoInvocation withUndoInvocation:invocation];
    
    [invocation invoke];
}

@end
