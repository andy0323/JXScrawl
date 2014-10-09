//
//  NSMutableArray+Stack.m
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "NSMutableArray+Stack.h"

@implementation NSMutableArray (Stack)

- (void)push:(id)object
{
    [self addObject:object];
}

- (id)pop
{
    if (self.count == 0) {
        return nil;
    }
    
    id object = [self lastObject];
    [self removeLastObject];
    
    return object;
}

- (void)dropBottom
{

}

@end
