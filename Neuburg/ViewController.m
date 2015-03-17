//
//  ViewController.m
//  Neuburg
//
//  Created by abruzzim on 3/16/15.
//  Copyright (c) 2015 Mario Abruzzi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *mainView = self.view;
    mainView.backgroundColor = [UIColor grayColor];
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(113, 111, 132, 194)];
    view1.backgroundColor = [UIColor colorWithRed:1.0 green:0.4 blue:1.0 alpha:1.0];
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(41, 56, 132, 194)];
    view2.backgroundColor = [UIColor colorWithRed:0.5 green:1.0 blue:0.0 alpha:1.0];
    
    UIView *view3 = [[UIView alloc] initWithFrame:CGRectMake(43, 197, 160, 230)];
    view3.backgroundColor = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
    
    [mainView addSubview:view1];
    [view1 addSubview:view2];
    [mainView addSubview:view3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
