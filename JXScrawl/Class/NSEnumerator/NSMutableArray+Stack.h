//
//  NSMutableArray+Stack.h
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (Stack)

- (void)push:(id)object;
- (id)pop;
- (void)dropBottom;

@end
