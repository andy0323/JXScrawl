//
//  JXCommand.h
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JXCommand : NSObject
{
    @protected
    NSDictionary *_userInfo;
}

@property (nonatomic, strong) NSDictionary *userInfo;

- (void)execute;
- (void)undo;

@end
