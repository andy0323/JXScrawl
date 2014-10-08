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

- (void)requestViewChangeByObject:(id)object
{
    if ([object isKindOfClass:[UIBarButtonItem class]]) {
        switch (((UIBarButtonItem *)object).tag) {
            case kButtonTagOpenPaletteView:
            {
                JXPaletteViewController *controller = [[JXPaletteViewController alloc] init];
                [_canvasViewController presentViewController:controller
                                                    animated:YES
                                                  completion:nil];
                _activeViewController = controller;
            }
            break;
            
            case kButtonTagOpenThumbnailView:
            {
                JXThumbnailViewController *controller = [[JXThumbnailViewController alloc] init];
                [_canvasViewController presentViewController:controller
                                                    animated:YES
                                                  completion:nil];
                _activeViewController = controller;
            }
            break;
            
            default:
            {
                [_canvasViewController dismissViewControllerAnimated:YES
                                                          completion:nil];
                _activeViewController = _canvasViewController;
            }
            break;
        }
        
    }else {
        
        [_canvasViewController dismissViewControllerAnimated:YES
                                                  completion:nil];
        _activeViewController = _canvasViewController;
    }
}



- (void)viewDidLoad
{
    [super viewDidLoad];
}


@end
