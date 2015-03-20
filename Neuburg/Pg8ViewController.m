//
//  Pg8ViewController.m
//  Neuburg
//
//  Created by abruzzim on 3/19/15.
//  Copyright (c) 2015 Mario Abruzzi. All rights reserved.
//

#import "Pg8ViewController.h"

@interface Pg8ViewController ()

@property (strong, nonatomic) UIImageView *imgView;
@property (strong, nonatomic) UIImage     *marsImg;
@property (strong, nonatomic) UIImage     *marsTiledImg;

@end

@implementation Pg8ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Custom initialization.
        self.title = @"Pg 8";
        self.tabBarItem.image = [UIImage imageNamed:@"man343"];
    }
    
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];

    //// Setup the main view.
    
    UIView *mainView = self.view;
    mainView.backgroundColor = [UIColor lightGrayColor];
    
    self.marsImg = [UIImage imageNamed:@"Mars"];
    
    self.imgView = [[UIImageView alloc] initWithImage:self.marsImg];
    self.imgView.contentMode = UIViewContentModeScaleToFill;
    self.imgView.layer.borderColor = [UIColor blackColor].CGColor;
    self.imgView.layer.borderWidth = 2;
    
    [mainView addSubview: self.imgView];
    
    // Constraints and Layouts
    
    self.imgView.translatesAutoresizingMaskIntoConstraints = NO;
    
    // Position
    
    [self.imgView.superview addConstraint:
     [NSLayoutConstraint constraintWithItem:self.imgView
                                  attribute:NSLayoutAttributeCenterX
                                  relatedBy:0
                                     toItem:self.imgView.superview
                                  attribute:NSLayoutAttributeCenterX
                                 multiplier:1
                                   constant:0]];
    
    [self.imgView.superview addConstraint:
     [NSLayoutConstraint constraintWithItem:self.imgView
                                  attribute:NSLayoutAttributeCenterY
                                  relatedBy:0
                                     toItem:self.imgView.superview
                                  attribute:NSLayoutAttributeCenterY
                                 multiplier:1
                                   constant:0]];
    // Size
    
    [self.imgView addConstraint:
     [NSLayoutConstraint constraintWithItem:self.imgView
                                  attribute:NSLayoutAttributeWidth
                                  relatedBy:0
                                     toItem:nil
                                  attribute:0
                                 multiplier:1
                                   constant:300]];
    
    [self.imgView addConstraint:
     [NSLayoutConstraint constraintWithItem:self.imgView
                                  attribute:NSLayoutAttributeHeight
                                  relatedBy:0
                                     toItem:nil
                                  attribute:0
                                 multiplier:1
                                   constant:100]];
    
    //// Add Demo Buttons
    
    self.button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.button1.layer.cornerRadius = 5.0;
    self.button1.backgroundColor = [UIColor orangeColor];
    [self.button1 setTitle:@"1 - Tile 1" forState:UIControlStateNormal];
    [mainView addSubview: self.button1];
    [self.button1 addTarget:self
                     action:@selector(doTask1:)
           forControlEvents:UIControlEventTouchUpInside];
    self.button1.translatesAutoresizingMaskIntoConstraints = NO;

    self.button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.button2.layer.cornerRadius = 5.0;
    self.button2.backgroundColor = [UIColor orangeColor];
    [self.button2 setTitle:@"2 - Tile 2" forState:UIControlStateNormal];
    [mainView addSubview: self.button2];
    [self.button2 addTarget:self
                     action:@selector(doTask2:)
           forControlEvents:UIControlEventTouchUpInside];
    self.button2.translatesAutoresizingMaskIntoConstraints = NO;
    
    self.button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.button3.layer.cornerRadius = 5.0;
    self.button3.backgroundColor = [UIColor orangeColor];
    [self.button3 setTitle:@"3 - Stretch 1" forState:UIControlStateNormal];
    [mainView addSubview: self.button3];
    [self.button3 addTarget:self
                     action:@selector(doTask3:)
           forControlEvents:UIControlEventTouchUpInside];
    self.button3.translatesAutoresizingMaskIntoConstraints = NO;
    
    self.button4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.button4.layer.cornerRadius = 5.0;
    self.button4.backgroundColor = [UIColor orangeColor];
    [self.button4 setTitle:@"4 - Stretch 2" forState:UIControlStateNormal];
    [mainView addSubview: self.button4];
    [self.button4 addTarget:self
                     action:@selector(doTask4:)
           forControlEvents:UIControlEventTouchUpInside];
    self.button4.translatesAutoresizingMaskIntoConstraints = NO;
    
     //// Create an NSDictionary of subviews
     
     NSDictionary *subViews = NSDictionaryOfVariableBindings(_button1, _button2, _button3, _button4);
     
     // Button1 is 60 pts from the bottom and 10 pts or more from the left.
     
     [mainView addConstraints:
     [NSLayoutConstraint
     constraintsWithVisualFormat:@"V:[_button1]-60-|"
     options:0 metrics:nil views:subViews]];
     
     [mainView addConstraints:
     [NSLayoutConstraint
     constraintsWithVisualFormat:@"H:|-(>=10)-[_button1]"
     options:0 metrics:nil views:subViews]];
     
     // Button2 is 60 pts from the bottom and 10 pts or more from the left.
     
     [mainView addConstraints:
     [NSLayoutConstraint
     constraintsWithVisualFormat:@"V:[_button2]-60-|"
     options:0 metrics:nil views:subViews]];
     
     [mainView addConstraints:
     [NSLayoutConstraint
     constraintsWithVisualFormat:@"H:|-(>=10)-[_button2]"
     options:0 metrics:nil views:subViews]];
     
     // Button3 is 60 pts from the bottom and 10 pts or more from the left.
     
     [mainView addConstraints:
     [NSLayoutConstraint
     constraintsWithVisualFormat:@"V:[_button3]-60-|"
     options:0 metrics:nil views:subViews]];
     
     [mainView addConstraints:
     [NSLayoutConstraint
     constraintsWithVisualFormat:@"H:|-(>=10)-[_button3]"
     options:0 metrics:nil views:subViews]];
     
     // Button4 is 60 pts from the bottom and 10 pts or more from the left.
     
     [mainView addConstraints:
     [NSLayoutConstraint
     constraintsWithVisualFormat:@"V:[_button4]-60-|"
     options:0 metrics:nil views:subViews]];
     
     [mainView addConstraints:
     [NSLayoutConstraint
     constraintsWithVisualFormat:@"H:|-(>=10)-[_button4]"
     options:0 metrics:nil views:subViews]];
     
     // Layout buttons.
     
     [mainView addConstraints:
     [NSLayoutConstraint
     constraintsWithVisualFormat:@"H:[_button1]-(>=10)-[_button2]-(>=10)-[_button3]-(>=10)-[_button4]"
     options:0 metrics:nil views:subViews]];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)doTask1:(UIButton *)sender {
    
    NSLog(@"Button 1 tapped.");
    
    // Tile the entire image.
    self.marsTiledImg = [self.marsImg resizableImageWithCapInsets:UIEdgeInsetsZero];
    self.imgView.image = self.marsTiledImg;
}

- (void)doTask2:(UIButton *)sender {
    
    NSLog(@"Button 2 tapped.");
    
    // Tile the interior of the image.
    self.marsTiledImg = [self.marsImg resizableImageWithCapInsets:
                         UIEdgeInsetsMake(self.marsImg.size.height/4.0,
                                          self.marsImg.size.width/4.0,
                                          self.marsImg.size.height/4.0,
                                          self.marsImg.size.width/4.0)
                                                     resizingMode: UIImageResizingModeTile];
    self.imgView.image = self.marsTiledImg;
}

- (void)doTask3:(UIButton *)sender {
    
    NSLog(@"Button 3 tapped.");
    
    // Stretch the interior of the image.
    self.marsTiledImg = [self.marsImg resizableImageWithCapInsets:
                         UIEdgeInsetsMake(self.marsImg.size.height/4.0,
                                          self.marsImg.size.width/4.0,
                                          self.marsImg.size.height/4.0,
                                          self.marsImg.size.width/4.0)
                                                     resizingMode: UIImageResizingModeStretch];
    self.imgView.image = self.marsTiledImg;
}

- (void)doTask4:(UIButton *)sender {
    
    NSLog(@"Button 4 tapped.");
    
    // Stretch a few pixel at the interior of the image.
    self.marsTiledImg = [self.marsImg resizableImageWithCapInsets:
                         UIEdgeInsetsMake(self.marsImg.size.height/2.0 - 1,
                                          self.marsImg.size.width/2.0 - 1,
                                          self.marsImg.size.height/2.0 - 1,
                                          self.marsImg.size.width/2.0 - 1)
                                                     resizingMode: UIImageResizingModeStretch];
    self.imgView.image = self.marsTiledImg;
}

@end
