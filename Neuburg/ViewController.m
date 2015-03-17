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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Custom initialization.
        self.title = @"Pg 1";
    }
    
    return self;
    
}

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
    
    UIView *view4 = [[UIView alloc] initWithFrame:CGRectMake(130, 250, 132, 194)];
    view4.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:1.0 alpha:1.0];
    
    UIView *view5 = [[UIView alloc] initWithFrame:CGRectInset(view4.bounds, 10, 10)]; // Refers to view4's bounds.
    view5.backgroundColor = [UIColor colorWithRed:1.0 green:0.7 blue:0.1 alpha:0.9];
    
    UIView *view6 = [[UIView alloc] initWithFrame:CGRectMake(180, 300, 132, 194)];
    view6.backgroundColor = [UIColor colorWithRed:0.0 green:0.5 blue:0.2 alpha:1.0];
    
    UIView *view7 = [[UIView alloc] initWithFrame:CGRectInset(view6.bounds, 10, 10)]; // Refers to view6's bounds.
    view7.backgroundColor = [UIColor colorWithRed:1.0 green:0.1 blue:1.0 alpha:0.9];
    
    UIView *view8 = [[UIView alloc] initWithFrame:CGRectMake(10, 350, 132, 194)];
    view8.backgroundColor = [UIColor colorWithRed:0.0 green:0.5 blue:0.2 alpha:1.0];
    
    UIView *view9 = [[UIView alloc] initWithFrame:CGRectInset(view8.bounds, 10, 10)]; // Refers to view8's bounds.
    view9.backgroundColor = [UIColor colorWithRed:1.0 green:0.1 blue:1.0 alpha:0.9];
    
    UIView *view10 = [[UIView alloc] initWithFrame:CGRectMake(150, 450, 132, 194)];
    view10.backgroundColor = [UIColor colorWithRed:0.0 green:0.5 blue:0.2 alpha:1.0];
    
    UIView *view11 = [[UIView alloc] initWithFrame:CGRectInset(view10.bounds, 10, 10)]; // Refers to view10's bounds.
    view11.backgroundColor = [UIColor colorWithRed:1.0 green:0.1 blue:1.0 alpha:0.9];
    
    [mainView addSubview:view1];
    [view1 addSubview:view2];
    [mainView addSubview:view3];
    [mainView addSubview:view4];
    [view4 addSubview:view5];
    [mainView addSubview:view6];
    [view6 addSubview:view7];
    [mainView addSubview:view8];
    [view8 addSubview:view9];
    [mainView addSubview:view10];
    [view10 addSubview:view11];
    
    CGRect r4 = view4.bounds; // Get superview's frame.
    r4.origin.x += 25;        // Set superview's x-origin.
    r4.origin.y += 25;        // Set superview's y-origin.
    view4.bounds = r4;        // Change the superview's coordinate system.
    
    CGRect r5 = view5.bounds; // Get the subview's frame.
    r5.size.height -= 10;     // Set inset view's height.
    r5.size.width  -= 10;     // Set inset view's width.
    view5.bounds = r5;        // Change the inset view's frame.
    
    view6.transform = CGAffineTransformMakeRotation(45 * M_PI/180.0); // Rotation transform.
    
    view8.transform = CGAffineTransformMakeScale(0.8, 1.0); // Scale transform.
    
    view10.transform = CGAffineTransformMake(1, 0, -0.2, 1, 0, 0); // Skew transform.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
