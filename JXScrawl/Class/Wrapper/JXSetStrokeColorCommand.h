//
//  JXSetStrokeColorCommand.h
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "JXCommand.h"

@class JXSetStrokeColorCommand;
@protocol JXSetStrokeColorCommandDelegate

- (void)command:(JXSetStrokeColorCommand *)command
        didRequestColorComponentsForRed:(CGFloat *)red
                                  green:(CGFloat *)green
                                   blue:(CGFloat *)blue;

- (void)command:(JXSetStrokeColorCommand *)command
        didFinishColorUpdateWithColor:(UIColor *)color;
@end


@interface JXSetStrokeColorCommand : JXCommand
{
    @private
    __unsafe_unretained id<JXSetStrokeColorCommandDelegate> _delegate;
}
@property (nonatomic, assign) id<JXSetStrokeColorCommandDelegate>delegate;

@end
