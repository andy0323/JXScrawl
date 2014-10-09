//
//  JXFlowerFactory.m
//  JXScrawl
//
//  Created by andy on 10/9/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXFlowerFactory.h"
#import "JXFlowerView.h"

@implementation JXFlowerFactory

- (UIView *)flowerViewWithType:(JXFlowerType)type
{
    // 懒加载花朵池
    if (_flowerPool == nil) {
        _flowerPool = [[NSMutableDictionary alloc] initWithCapacity:kTotalNumberOfFlowerTypes];
        
    }
    
    // 尝试从花朵池中取出一朵花
    UIView *flowerView = [_flowerPool objectForKey:[NSNumber numberWithInt:type]];
    
    // 如果请求的类型不存在
    // 那么就创建一个, 并且添加到池中
    if (flowerView == nil) {
        UIImage *flowerImage;
        
        switch (type) {
            case kAnemone:
                flowerImage = [UIImage imageNamed:@"anemone.png"];
                break;
            case kCosmos:
                flowerImage = [UIImage imageNamed:@"cosmos.png"];
                break;
            case kGerberas:
                flowerImage = [UIImage imageNamed:@"gerberas"];
                break;
            case kHollyhock:
                flowerImage = [UIImage imageNamed:@"hollyhock"];
                break;
            case kJasmine:
                flowerImage = [UIImage imageNamed:@"jasmine"];
                break;
            case kZinnia:
                flowerImage = [UIImage imageNamed:@"zinnia"];
                break;
            default:
                break;
        }
        
        flowerView = [[JXFlowerView alloc] initWithImage:flowerImage];
        [_flowerPool setObject:flowerView
                        forKey:[NSNumber numberWithInt:type]];
    }
    
    return flowerView;
}

@end
