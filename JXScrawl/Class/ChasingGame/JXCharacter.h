//
//  JXCharacter.h
//  JXScrawl
//
//  Created by andy on 10/4/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JXCharacter : NSObject
{
    @private
    float _protection;
    float _power;
    float _strength;        // 力量
    float _stramina;        // 耐力
    float _intelligence;    // 智力
    float _agility;         // 敏捷
    float _aggressiveness;  // 攻击力
}

@property (nonatomic, assign) float protection;
@property (nonatomic, assign) float power;
@property (nonatomic, assign) float strength;
@property (nonatomic, assign) float stramina;
@property (nonatomic, assign) float intelligence;
@property (nonatomic, assign) float agility;
@property (nonatomic, assign) float aggressiveness;

@end
