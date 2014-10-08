//
//  JXAlphaInputValidator.m
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXAlphaInputValidator.h"

@implementation JXAlphaInputValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError *__autoreleasing *)error
{
    NSError *regError = nil;
    NSRegularExpression *regex =
    [NSRegularExpression regularExpressionWithPattern:@"^[a-zA-Z]*$"
                                              options:
     NSRegularExpressionAnchorsMatchLines error:&regError];
    
    NSInteger numberOfMatches = [regex numberOfMatchesInString:input.text
                                                       options:NSMatchingAnchored
                                                         range:NSMakeRange(0, [[input text] length])];
    // 如果没有匹配, 就返回错误和NO
    if (numberOfMatches == 0) {
        if (error != nil) {
            NSString *description = @"Input Validation Failed";
            NSString *reason = @"The input can contain only numbercal values";
            
            NSArray *objArray = [NSArray arrayWithObjects:description, reason, nil];
            NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey, NSLocalizedFailureReasonErrorKey, nil];
            
            NSDictionary *userInfo = @{ keyArray : objArray };
            
            *error = [NSError errorWithDomain:@"InputValidationErrorDomain"
                                         code:1002
                                     userInfo:userInfo];
        }
        return NO;
    }
    return YES;
}

@end
