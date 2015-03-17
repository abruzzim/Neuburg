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
    }
    
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *page5MainView = self.view;
    page5MainView.backgroundColor = [UIColor grayColor];
    
    /* Add UIButton */
    
    UIButton *resizeToggle = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    resizeToggle.layer.cornerRadius = 5.0;
    resizeToggle.frame = CGRectMake((page5MainView.bounds.size.width/2)-(100/2), page5MainView.bounds.size.height-150, 100, 50);
    resizeToggle.backgroundColor = [UIColor yellowColor];
    [resizeToggle setTitle:@"No Op" forState:UIControlStateNormal];
    [page5MainView addSubview:resizeToggle];
    [resizeToggle addTarget:self
                     action:@selector(resize:)
           forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)resize:(UIButton *)sender {
    NSLog(@"Resize button tapped");
    
}

@end
