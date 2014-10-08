//
//  JXStrategyViewController.m
//  JXScrawl
//
//  Created by andy on 10/8/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXStrategyViewController.h"

@interface JXStrategyViewController ()

@end

@implementation JXStrategyViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    if ([textField isKindOfClass:[JXCustomTextField class]]) {
        [((JXCustomTextField *)textField) validate];
    }
}

@end
