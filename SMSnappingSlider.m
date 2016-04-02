//
//  SMSteppedSlider.m
//  Slider
//
//  Created by Cesare Rocchi on 4/27/14.
//  Copyright (c) 2014 Cesare Rocchi. All rights reserved.
//

#import "SMSnappingSlider.h"

@implementation SMSnappingSlider

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];

    if (self) {
        
        [[UISlider appearance] setMinimumTrackImage:[[UIImage imageNamed:@"sliderBG"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 0, 0, 0)]
                                           forState:UIControlStateNormal];
        [[UISlider appearance] setMaximumTrackImage:[[UIImage imageNamed:@"sliderBG"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 0, 0, 0)]
                                           forState:UIControlStateNormal];
        [[UISlider appearance] setThumbImage:[UIImage imageNamed:@"sliderTrack"]
                                    forState:UIControlStateNormal];
        UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(-2.5, 0, 280, 31)];
        slider.minimumValue = 0;
        slider.maximumValue = 4;
        [slider addTarget:self action:@selector(sliderChanged:)
         forControlEvents:UIControlEventValueChanged];
        [self addSubview:slider];
        
        int positionX = 6;
        for (NSInteger i = 0; i <= slider.maximumValue; i++) {
        
            int radius = 10;
            CAShapeLayer *circle = [CAShapeLayer layer];
            circle.path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0,radius,radius) cornerRadius:radius].CGPath;
            circle.position = CGPointMake(positionX, 10.5);
            circle.fillColor = [UIColor grayColor].CGColor;
            [self.layer insertSublayer:circle atIndex:0];
            positionX += ((slider.frame.size.width/5)+6) +2;
            
        }
        
    }
  
    return self;
    
}

- (void) sliderChanged:(UISlider *) slider {
    
    [slider setValue:roundf(slider.value) animated:YES];
    NSLog(@"slider %f", slider.value);
    
}

@end
