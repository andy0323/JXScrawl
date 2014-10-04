//
//  JXSetStrokeColorCommand.m
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXSetStrokeColorCommand.h"
#import "JXCoordinatingController.h"
#import "JXCanvasViewController.h"

@implementation JXSetStrokeColorCommand

- (void)execute
{
    CGFloat redValue   = 0.0;
    CGFloat greenValue = 0.0;
    CGFloat blueValue  = 0.0;

    // 从委托获取RGB值
    [_delegate command:self didRequestColorComponentsForRed:&redValue
                                                      green:&greenValue
                                                       blue:&blueValue];
    
    // 根据RGB值创建一个颜色对象
    UIColor *color = [UIColor colorWithRed:redValue
                                     green:greenValue
                                      blue:blueValue
                                     alpha:1];

    // 颜色赋值给 CanvasViewController
    JXCoordinatingController *coordinator = [JXCoordinatingController sharedInstance];
    JXCanvasViewController *controller = [coordinator canvasViewController];
    controller.strokenColor = color;
    
    // 转发更新成功消息
    [_delegate command:self didFinishColorUpdateWithColor:color];
}

@end
