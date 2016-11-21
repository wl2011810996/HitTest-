//
//  WLWindow.m
//  HitTest
//
//  Created by 荣耀iMac on 16/11/21.
//  Copyright © 2016年 wleleven. All rights reserved.
//

#import "WLWindow.h"

@implementation WLWindow

-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    if (self.userInteractionEnabled == NO|| self.hidden == YES || self.alpha <= 0.01 ) {
        return nil;
    }
    
    if (![self pointInside:point withEvent:event]) {
        return nil;
    }
    
    int count = (int)self.subviews.count;
    for (int i = count - 1 ; i>= 0; i--) {
        UIView *childV = self.subviews[i];
        CGPoint childP = [self convertPoint:point toView:childV];
        UIView *fitView = [childV hitTest:childP withEvent:event];
        if (fitView) {
            return fitView;
        }
    }
    
    return self;
}

-(BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    return YES;
}


@end
