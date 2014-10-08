//
//  JXEnumeratorDemo.m
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXEnumeratorDemo.h"

@implementation JXEnumeratorDemo

- (void)NSEnumeratorDemo
{
    NSArray *arr = @[@"1",
                     @"2",
                     @"3",
                     @"4"];
    NSEnumerator *itemEnumerator = [arr objectEnumerator];

    NSString *item;
    while (item = [itemEnumerator nextObject]) {
        
        // 对item作协处理
    }
}

- (void)NSEnumeratorDemo__Block
{
    NSArray *arr = @[@"1",
                     @"2",
                     @"3",
                     @"4"];
    NSString *string;
    
    [arr enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
       
        if ([obj localizedCaseInsensitiveCompare:string] == NSOrderedSame) {
            
            // 对返回的obj做点别的事情
            *stop = YES;
            
        }
    }];
}

@end
