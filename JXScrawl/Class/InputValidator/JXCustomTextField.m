//
//  JXCustomTextField.m
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXCustomTextField.h"

@implementation JXCustomTextField

- (BOOL)validate
{
    NSError *err = nil;
    BOOL validationResult = [_inputValidator validateInput:self
                                                     error:&err];
    if (!validationResult) {
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:[err localizedDescription]
                                    message:[err localizedFailureReason]
                                   delegate:nil
                          cancelButtonTitle:@"OK"
                              otherButtonTitles:@"", nil];
        [alert show];
    }
    
    return validationResult;
}


@end
