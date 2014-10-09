//
//  JXFlowerFactory.h
//  JXScrawl
//
//  Created by andy on 10/9/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef struct {
    __unsafe_unretained UIView *flowerView;
    CGRect area;
} ExtrinsicFlowerState;

typedef enum {
    kAnemone,
    kCosmos,
    kGerberas,
    kHollyhock,
    kJasmine,
    kZinnia,
    kTotalNumberOfFlowerTypes
} JXFlowerType;

@interface JXFlowerFactory : NSObject
{
    @private
    NSMutableDictionary *_flowerPool;
}

- (UIView *)flowerViewWithType:(JXFlowerType)type;

@end
