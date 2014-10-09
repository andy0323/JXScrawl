//
//  JXFlowerView.h
//  JXScrawl
//
//  Created by andy on 10/9/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JXFlowerView : UIImageView
{

}

@property (nonatomic, strong) NSMutableArray *flowerList;

- (void)drawRect:(CGRect)rect;

@end
