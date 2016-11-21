//
//  ViewController.m
//  HitTest
//
//  Created by 荣耀iMac on 16/11/21.
//  Copyright © 2016年 wleleven. All rights reserved.
//

#import "ViewController.h"
#import "ChatBtn.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (IBAction)btnClick:(ChatBtn *)sender {

    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"对话框"] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"小孩"] forState:UIControlStateHighlighted];
    
    sender.popBtn = btn;

    btn.frame = CGRectMake(100, -80, 100, 80);
    [sender addSubview:btn];
    

    
    
}


@end
