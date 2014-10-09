//
//  JXScribbleMementoViewController.m
//  JXScrawl
//
//  Created by andy on 10/9/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXScribbleMementoViewController.h"
#import "JXScribble.h"
#import "JXScribbleMemento.h"

@interface JXScribbleMementoViewController ()

@end

@implementation JXScribbleMementoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}


- (void)input
{
    JXScribble *scribble = [[JXScribble alloc] init];
    
    // 从涂鸦获取备忘录
    JXScribbleMemento *scribbleMemento = [scribble scribbleMemento];
    
    // 从备忘录取得NSData对象
    // 以便保存到文件系统
    NSData *mementoData = [scribbleMemento data];
    
    // 保存文件系统
    NSString *mementoPath;
    [mementoData writeToFile:mementoPath atomically:YES];
}

- (void)output
{
    NSString *scribbleMementoPath;
    // 获取备忘录
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSData *scribbleMementoData = [fileManager contentsAtPath:scribbleMementoPath];
    
    // 从这个NSData对象创建一个ScribbleMemento
    // 然后使用这个备忘录, 根据其中所保存的内容来恢复Scribble对象
    JXScribbleMemento *scribbleMemento = [JXScribbleMemento mementoWithData:scribbleMementoData];
    JXScribble *resurretedScribble = [JXScribble scribbleWithMemento:scribbleMemento];
}

@end
