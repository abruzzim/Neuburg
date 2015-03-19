//
//  Pg2ViewController.m
//  Neuburg
//
//  Created by abruzzim on 3/17/15.
//  Copyright (c) 2015 Mario Abruzzi. All rights reserved.
//

#import "Pg2ViewController.h"

@interface Pg2ViewController ()

@end

@implementation Pg2ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Custom initialization.
        self.title = @"Pg 2";
        self.tabBarItem.image = [UIImage imageNamed:@"man343"];
    }
    
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Autoresizing Demo Part 1/2
    
    UIView *page2MainView = self.view;
    page2MainView.backgroundColor = [UIColor grayColor];
    
    // Subview set 1.
    
    UIView *v1 = [[UIView alloc] initWithFrame:CGRectMake(100, 111, 132, 194)];
    v1.backgroundColor = [UIColor colorWithRed:1.0 green:0.4 blue:1.0 alpha:1.0];
    
    UIView *v2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 132, 10)];
    v2.backgroundColor = [UIColor colorWithRed:0.5 green:1.0 blue:0.0 alpha:1.0];
    
    UIView *v3 = [[UIView alloc] initWithFrame:CGRectMake(v1.bounds.size.width-20, v1.bounds.size.height-20, 20, 20)];
    v3.backgroundColor = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
    
    // Subview set 2.
    
    UIView *v4 = [[UIView alloc] initWithFrame:CGRectMake(100, 311, 132, 194)];
    v4.backgroundColor = [UIColor colorWithRed:1.0 green:0.4 blue:1.0 alpha:1.0];
    
    UIView *v5 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 132, 10)];
    v5.backgroundColor = [UIColor colorWithRed:0.5 green:1.0 blue:0.0 alpha:1.0];
    
    UIView *v6 = [[UIView alloc] initWithFrame:CGRectMake(v4.bounds.size.width-20, v4.bounds.size.height-20, 20, 20)];
    v6.backgroundColor = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
    
    
    [page2MainView addSubview:v1];
    [v1 addSubview:v2];
    [v1 addSubview:v3];
    
    [page2MainView addSubview:v4];
    [v4 addSubview:v5];
    [v4 addSubview:v6];
    
    // Set "springs" and "struts" values.
    
    v5.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    v6.autoresizingMask = UIViewAutoresizingFlexibleTopMargin |
                          UIViewAutoresizingFlexibleLeftMargin;
    
    // Resize the superview.
    
    CGRect r = v4.bounds;
    r.size.width  += 40;
    r.size.height -= 50;
    v4.bounds = r;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
