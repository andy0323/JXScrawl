//
//  JXCustomTextField.h
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JXInputValidator.h"
@interface JXCustomTextField : UITextField
{
    @private
    JXInputValidator *_inputValidator;
}

@property (nonatomic, strong) JXInputValidator *inputValidator;

- (BOOL)validate;

@end
