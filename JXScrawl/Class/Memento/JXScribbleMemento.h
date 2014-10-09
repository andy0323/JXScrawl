//
//  JXScribbleMemento.h
//  JXScrawl
//
//  Created by andy on 10/9/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JXMark.h"

@interface JXScribbleMemento : NSObject
{
    @private
    id<JXMark> _mark;
    BOOL _hasCompleteSnashot;
}

+ (JXScribbleMemento *)mementoWithData:(NSData *)data;
- (NSData *)data;

@end
