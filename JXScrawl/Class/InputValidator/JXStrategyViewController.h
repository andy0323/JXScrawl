//
//  JXStrategyViewController.h
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JXNumbericInputValidator.h"
#import "JXAlphaInputValidator.h"
#import "JXCustomTextField.h"

@interface JXStrategyViewController : UIViewController<UITextFieldDelegate>
{
    @private
    JXCustomTextField *_numberTextField;
    JXCustomTextField *_alphaTextField;
}

@property (nonatomic, strong) JXCustomTextField *numberTextField;
@property (nonatomic, strong) JXCustomTextField *alphaTextField;

@end
