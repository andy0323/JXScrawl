//
//  JXFlowerViewController.m
//  JXScrawl
//
//  Created by andy on 10/9/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXFlowerViewController.h"
#import "JXFlowerView.h"
#import "JXFlowerFactory.h"

@interface JXFlowerViewController ()

@end

@implementation JXFlowerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // 构造花朵列表
    JXFlowerFactory *factory = [[JXFlowerFactory alloc] init];
    NSMutableArray *flowerList = [[NSMutableArray alloc] initWithCapacity:500];
    
    for (int i = 0; i < 500; ++i) {
        // 使用随机花朵类型
        // 从花朵工厂取得一个共享的花朵享元对象实例
        JXFlowerType flowerType = arc4random() % kTotalNumberOfFlowerTypes;
        UIView *flowerView = [factory flowerViewWithType:flowerType];
        
        // 设置花朵显示位置和区域
        CGRect screenBounds = [[UIScreen mainScreen] bounds];
        CGFloat x = (arc4random() % (NSInteger)screenBounds.size.width);
        CGFloat y = (arc4random() % (NSInteger)screenBounds.size.height);
        NSInteger minSize = 10;
        NSInteger maxSize = 50;
        CGFloat size = (arc4random() % (maxSize - minSize + 1) + minSize);
        
        // 把花朵的属性赋值给外在状态对象
        ExtrinsicFlowerState extrinsicState;
        extrinsicState.flowerView = flowerView;
        extrinsicState.area = CGRectMake(x, y, size, size);
        
        // 把外在花朵状态添加到花朵列表
        [flowerList addObject:[NSValue value:&extrinsicState
                               withObjCType:@encode(ExtrinsicFlowerState)]];
    }
    
    // 把花朵列表添加到这个FlyweightView实例
    [((JXFlowerView *)self.view) setFlowerList:flowerList];
}


@end
