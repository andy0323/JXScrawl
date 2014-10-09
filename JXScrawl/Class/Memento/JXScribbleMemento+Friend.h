//
//  JXScribbleMemento+Friend.h
//  JXScrawl
//
//  Created by andy on 10/9/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXScribbleMemento.h"

@interface JXScribbleMemento (Friend)

- (id)initWithMark:(id<JXMark>)mark;

@property (nonatomic, copy) id<JXMark> mark;
@property (nonatomic, assign) BOOL hasCompleteSnapshot;

@end
