//
//  JXCoordinatingController.m
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXCoordinatingController.h"

@interface JXCoordinatingController ()

@end

@implementation JXCoordinatingController

+ (instancetype)sharedInstance
{
    static JXCoordinatingController *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!instance) {
            instance = [[[self class] alloc] init];
        }
    });
    return instance;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
}


@end
