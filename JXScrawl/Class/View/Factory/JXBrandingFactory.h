//
//  JXBrandingFactory.h
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JXBrandingFactory : NSObject
{

}

+ (JXBrandingFactory *)factory;

- (UIView *)brandedView;
- (UIButton *)brandedMainButton;
- (UIToolbar *)brandedToolbar;

@end
