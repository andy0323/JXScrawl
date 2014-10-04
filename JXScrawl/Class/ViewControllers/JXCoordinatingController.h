//
//  JXCoordinatingController.h
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JXCanvasViewController.h"
#import "JXPaletteViewController.h"
#import "JXThumbnailViewController.h"

@interface JXCoordinatingController : UIViewController
{
    @private
    JXCanvasViewController *_canvasViewController;
    UIViewController *_activeViewController;
}

@property (nonatomic, readonly) UIViewController *activeViewController;
@property (nonatomic, readonly) JXCanvasViewController *canvasViewController;

+ (instancetype)sharedInstance;
- (IBAction)requestViewChangeByObject:(id)object;

@end
