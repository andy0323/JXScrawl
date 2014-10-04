//
//  QBasePaletteViewController.m
//  iOS_设计模式
//
//  Created by andy on 10/3/14.
//  Copyright (c) 2014 streakq. All rights reserved.
//

#import "JXPaletteViewController.h"

@interface JXPaletteViewController ()

@end

@implementation JXPaletteViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGRect frame = CGRectMake(10, 50, 280, 20);
    for (int i = 0; i < 3; i++) {
        frame.origin.y += 50;
        JXCommandSlider *slider = [[JXCommandSlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(onCommandSliderValueChanged:) forControlEvents:UIControlEventValueChanged];
        [self.view addSubview:slider];
    
        switch (i) {
            case 0:
                _redSlider = slider;
                break;
            case 1:
                _greenSlider = slider;
                break;
            case 2:
                _blueSlider = slider;
                break;
            default:
                break;
        }
    }
}

- (void)onCommandSliderValueChanged:(JXCommandSlider *)slider
{
    [slider.command execute];
}

#pragma mark -
#pragma mark - JXSetStrokeColorCommandDelegate Method

- (void)command:(JXSetStrokeColorCommand *)command didRequestColorComponentsForRed:(CGFloat *)red green:(CGFloat *)green blue:(CGFloat *)blue
{

}

- (void)command:(JXSetStrokeColorCommand *)command didFinishColorUpdateWithColor:(UIColor *)color
{

}

@end
