//
//  JXCommandSlider.h
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JXCommand.h"

@interface JXCommandSlider : UISlider
{
    @protected
    JXCommand *_command;
}

@property (nonatomic, strong) IBOutlet JXCommand *command;

@end
