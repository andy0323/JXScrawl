//
//  NSEnumerator+Private.h
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JXMark.h"
@interface NSEnumerator (Private)

- (id)initWithMark:(id<JXMark>)mark;
- (void)traverseAndBuildStackWithMark:(id<JXMark>)mark;

@end
