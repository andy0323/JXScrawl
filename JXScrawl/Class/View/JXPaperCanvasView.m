//
//  JXPaperCanvasView.m
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXPaperCanvasView.h"

@implementation JXPaperCanvasView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // 在上面添加一个纸图像视图作为画布背景
        UIImage *backgroundImage = [UIImage imageNamed:@"paper"];
        UIImageView *backgroundView = [[UIImageView alloc] initWithImage:backgroundImage];
        [self addSubview:backgroundView];
    }
    return self;
}

// 其他行为的实现

@end
