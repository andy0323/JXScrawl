//
//  JXScribbleThumbnailViewImageProxy.h
//  JXScrawl
//
//  Created by andy on 10/9/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXScribbleThumbnailView.h"

@interface JXScribbleThumbnailViewImageProxy : JXScribbleThumbnailView
{
    @private
    UIImage *_realImage;
    BOOL _loadingThreadHasLaunched;
}

@property (nonatomic, readonly) UIImage *image;

@end
