//
//  PinkView.m
//  HitTest
//
//  Created by 荣耀iMac on 16/11/21.
//  Copyright © 2016年 wleleven. All rights reserved.
//

#import "PinkView.h"

@interface PinkView()

@property(nonatomic, weak) IBOutlet UIButton *btn;

@end


@implementation PinkView

-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    NSLog(@"%@\n",NSStringFromCGPoint(point));
    CGPoint btnP = [self convertPoint:point toView:self.btn];
    NSLog(@"%@\n",NSStringFromCGPoint(point));
    if ([self.btn pointInside:btnP withEvent:event]) {
        return self.btn;
    }else{
        return [super hitTest:point withEvent:event];
    }
   
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s",__func__);
}

@end
