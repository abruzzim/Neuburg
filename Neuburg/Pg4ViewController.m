//
//  Pg4ViewController.m
//  Neuburg
//
//  Created by abruzzim on 3/17/15.
//  Copyright (c) 2015 Mario Abruzzi. All rights reserved.
//

#import "Pg4ViewController.h"

@interface Pg4ViewController ()

@end

@implementation Pg4ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Custom initialization.
        self.title = @"Pg 4";
        self.tabBarItem.image = [UIImage imageNamed:@"man343"];
    }
    
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *page4MainView = self.view;
    page4MainView.backgroundColor = [UIColor grayColor];
    
    UIView *v1 = [[UIView alloc] initWithFrame:CGRectMake(100, 111, 132, 194)];
    v1.backgroundColor = [UIColor colorWithRed:1.0 green:0.4 blue:1.0 alpha:1.0];
    
    UIView *v2 = [UIView new]; // Frame NOT set.
    v2.backgroundColor = [UIColor colorWithRed:0.5 green:1.0 blue:0.0 alpha:1.0];
    
    UIView *v3 = [UIView new]; // Frame NOT set.
    v3.backgroundColor = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
    
    [page4MainView addSubview: v1];
    [v1 addSubview: v2];
    [v1 addSubview: v3];
    
    v2.translatesAutoresizingMaskIntoConstraints = NO;
    v3.translatesAutoresizingMaskIntoConstraints = NO;
    
    // v2 is 10 pts high and flush with the left, right and top of v1.
    
    [v1 addConstraint:
     [NSLayoutConstraint constraintWithItem:v2
                                  attribute:NSLayoutAttributeLeft
                                  relatedBy:0
                                     toItem:v1
                                  attribute:NSLayoutAttributeLeft
                                 multiplier:1
                                   constant:0]];
    [v1 addConstraint:
     [NSLayoutConstraint constraintWithItem:v2
                                  attribute:NSLayoutAttributeRight
                                  relatedBy:0
                                     toItem:v1
                                  attribute:NSLayoutAttributeRight
                                 multiplier:1
                                   constant:0]];
    [v1 addConstraint:
     [NSLayoutConstraint constraintWithItem:v2
                                  attribute:NSLayoutAttributeTop
                                  relatedBy:0
                                     toItem:v1
                                  attribute:NSLayoutAttributeTop
                                 multiplier:1
                                   constant:0]];
    [v2 addConstraint:
     [NSLayoutConstraint constraintWithItem:v2
                                  attribute:NSLayoutAttributeHeight
                                  relatedBy:0
                                     toItem:nil
                                  attribute:0
                                 multiplier:1
                                   constant:10]];
    
    // v3 is 20 pts wide and 20 pts high and flush with the bottom-right corner of v1.
    
    [v3 addConstraint:
     [NSLayoutConstraint constraintWithItem:v3
                                  attribute:NSLayoutAttributeWidth
                                  relatedBy:0
                                     toItem:nil
                                  attribute:0
                                 multiplier:1
                                   constant:20]];
    [v3 addConstraint:
     [NSLayoutConstraint constraintWithItem:v3
                                  attribute:NSLayoutAttributeHeight
                                  relatedBy:0
                                     toItem:nil
                                  attribute:0
                                 multiplier:1
                                   constant:20]];
    [v1 addConstraint:
     [NSLayoutConstraint constraintWithItem:v3
                                  attribute:NSLayoutAttributeBottom
                                  relatedBy:0
                                     toItem:v1
                                  attribute:NSLayoutAttributeBottom
                                 multiplier:1
                                   constant:0]];
    [v1 addConstraint:
     [NSLayoutConstraint constraintWithItem:v3
                                  attribute:NSLayoutAttributeRight
                                  relatedBy:0
                                     toItem:v1
                                  attribute:NSLayoutAttributeRight
                                 multiplier:1
                                   constant:0]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
