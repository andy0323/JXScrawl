//
//  JXCanvasView.h
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JXMark.h"
#import "JXMarkRenderer.h"

@interface JXCanvasView : UIView
{

}
@property (nonatomic, strong) id<JXMark> mark;

@end
