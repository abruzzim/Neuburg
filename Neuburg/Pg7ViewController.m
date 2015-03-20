//
//  Pg7ViewController.m
//  Neuburg
//
//  Created by abruzzim on 3/19/15.
//  Copyright (c) 2015 Mario Abruzzi. All rights reserved.
//

#import "Pg7ViewController.h"

@interface Pg7ViewController ()

@end

@implementation Pg7ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Custom initialization.
        self.title = @"Pg 7";
        self.tabBarItem.image = [UIImage imageNamed:@"man343"];
    }
    
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView *mainView = self.view;
    mainView.backgroundColor = [UIColor lightGrayColor];
    
    self.marsImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Mars"]];
    self.marsImgView.clipsToBounds = YES;
    self.marsImgView.contentMode = UIViewContentModeScaleAspectFit;
    self.marsImgView.layer.borderColor = [UIColor blackColor].CGColor;
    self.marsImgView.layer.borderWidth = 2;
    [mainView addSubview: self.marsImgView];
    
#define case 2
    
#if case==1
    
    // Use auto-resizing behavior.
    
    self.marsImgView.center = CGPointMake(CGRectGetMidX(self.marsImgView.superview.bounds),
                                          CGRectGetMidY(self.marsImgView.superview.bounds));
    self.marsImgView.frame = CGRectIntegral(self.marsImgView.frame);
    
#elif case==2
    
    // Do not use auto-resizing behavior.
    
    self.marsImgView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.marsImgView.superview addConstraint:
     [NSLayoutConstraint
      constraintWithItem:self.marsImgView
               attribute:NSLayoutAttributeCenterX
               relatedBy:0
                  toItem:self.marsImgView.superview
               attribute:NSLayoutAttributeCenterX
              multiplier:1
                constant:0]];
    
    [self.marsImgView.superview addConstraint:
     [NSLayoutConstraint
      constraintWithItem:self.marsImgView
               attribute:NSLayoutAttributeCenterY
               relatedBy:0
                  toItem:self.marsImgView.superview
               attribute:NSLayoutAttributeCenterY
              multiplier:1
                constant:0]];
    
    self.marsImgView.image = [UIImage imageNamed:@"Mars.png"];
    
#endif
    
    double delayInSeconds = 2.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        self.marsImgView.image = [UIImage imageNamed:@"Earth.png"];
    });
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
