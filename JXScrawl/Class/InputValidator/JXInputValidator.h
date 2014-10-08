//
//  JXInputValidator.h
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JXInputValidator : NSObject
{

}

// 实际验证策略的存根方法
- (BOOL)validateInput:(UITextField *)input error:(NSError **)error;

@end
