//
//  JXScribbleThumbnailView.h
//  JXScrawl
//
//  Created by andy on 10/9/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JXScribbleThumbnailView : UIView
{
    @protected
    NSString *_imagePath;
}

@property (nonatomic, strong, readonly) UIImage *image;
@property (nonatomic, copy) NSString *imagePath;

@end
