//
//  OrangeView.m
//  HitTest
//
//  Created by 荣耀iMac on 16/11/21.
//  Copyright © 2016年 wleleven. All rights reserved.
//

#import "OrangeView.h"

@implementation OrangeView

-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    NSLog(@"%s",__func__);
    
    return [super hitTest:point withEvent:event];
    
}

@end
