//
//  Pg3ViewController.m
//  Neuburg
//
//  Created by abruzzim on 3/17/15.
//  Copyright (c) 2015 Mario Abruzzi. All rights reserved.
//

#import "Pg3ViewController.h"

@interface Pg3ViewController ()

@end

@implementation Pg3ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Custom initialization.
        self.title = @"Pg 3";
        self.tabBarItem.image = [UIImage imageNamed:@"man343"];
    }
    
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Autoresizing Demo Part 2/2
    
    UIView *page3MainView = self.view;
    page3MainView.backgroundColor = [UIColor grayColor];
    
    // Subview set.
    
    UIView *v1 = [[UIView alloc] initWithFrame:page3MainView.bounds];
    v1.backgroundColor = [UIColor colorWithRed:1.0 green:0.4 blue:1.0 alpha:1.0];
    v1.autoresizingMask = UIViewAutoresizingFlexibleWidth |
                          UIViewAutoresizingFlexibleHeight;
    
    UIView *v2 = [[UIView alloc] initWithFrame:CGRectMake(0, 64, v1.bounds.size.width, 10)];
    v2.backgroundColor = [UIColor colorWithRed:0.5 green:1.0 blue:0.0 alpha:1.0];
    v2.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    
    UIView *v3 = [[UIView alloc] initWithFrame:CGRectMake(v1.bounds.size.width-20, v1.bounds.size.height-20-50, 20, 20)];
    v3.backgroundColor = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
    v3.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin;
    
    [page3MainView addSubview:v1];
    [v1 addSubview:v2];
    [v1 addSubview:v3];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
