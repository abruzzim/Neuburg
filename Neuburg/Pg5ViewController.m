//
//  Pg5ViewController.m
//  Neuburg
//
//  Created by abruzzim on 3/17/15.
//  Copyright (c) 2015 Mario Abruzzi. All rights reserved.
//

#import "Pg5ViewController.h"

@interface Pg5ViewController ()

@end

@implementation Pg5ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Custom initialization.
        self.title = @"Pg 5";
        self.tabBarItem.image = [UIImage imageNamed:@"man343"];
    }
    
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *page5MainView = self.view;
    page5MainView.backgroundColor = [UIColor grayColor];
    
    UIView *v1 = [[UIView alloc] initWithFrame:CGRectMake(100, 111, 132, 194)];
    v1.backgroundColor = [UIColor colorWithRed:1.0 green:0.4 blue:1.0 alpha:1.0];
    
    UIView *v2 = [UIView new]; // Frame NOT set.
    v2.backgroundColor = [UIColor colorWithRed:0.5 green:1.0 blue:0.0 alpha:1.0];
    
    UIView *v3 = [UIView new]; // Frame NOT set.
    v3.backgroundColor = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
    
    [page5MainView addSubview: v1];
    [v1 addSubview: v2];
    [v1 addSubview: v3];
    
    v2.translatesAutoresizingMaskIntoConstraints = NO;
    v3.translatesAutoresizingMaskIntoConstraints = NO;
    
    // https://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/AutolayoutPG/VisualFormatLanguage/VisualFormatLanguage.html#//apple_ref/doc/uid/TP40010853-CH3-SW1
    
    // Create a dictionary wherein the keys are string representations of the corresponding values’ variable names.
    
    NSDictionary *subViews = NSDictionaryOfVariableBindings(v2,v3);
    
    // v2 is 10 pts high and flush with the left, right and top of v1.
    
    [v1 addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[v2]|"
                                             options:0
                                             metrics:nil
                                               views:subViews]];
    
    [v1 addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[v2(10)]"
                                             options:0
                                             metrics:nil
                                               views:subViews]];
    
    // v3 is 20 pts wide and 20 pts high and flush with the bottom-right corner of v1.
    
    [v1 addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:[v3(20)]|"
                                             options:0
                                             metrics:nil
                                               views:subViews]];
    
    [v1 addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:[v3(20)]|"
                                             options:0
                                             metrics:nil
                                               views:subViews]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
