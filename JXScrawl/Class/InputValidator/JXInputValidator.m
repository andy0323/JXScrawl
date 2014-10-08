//
//  JXInputValidator.m
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXInputValidator.h"

@implementation JXInputValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError *__autoreleasing *)error
{
    if (error) {
        *error = nil;
    }
    return NO;
}

@end
