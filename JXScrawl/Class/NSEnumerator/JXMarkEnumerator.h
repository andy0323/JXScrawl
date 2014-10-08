//
//  JXMarkEnumerator.h
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JXMark.h"
#import "NSMutableArray+Stack.h"

@interface JXMarkEnumerator : NSEnumerator
{
    @private
    NSMutableArray *_stack;
}

- (NSArray *)allObjects;
- (id)nextObject;

@end
