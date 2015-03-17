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
    }
    
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *page4MainView = self.view;
    page4MainView.backgroundColor = [UIColor grayColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
