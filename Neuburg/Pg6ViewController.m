//
//  Pg6ViewController.m
//  Neuburg
//
//  Created by abruzzim on 3/17/15.
//  Copyright (c) 2015 Mario Abruzzi. All rights reserved.
//

#import "Pg6ViewController.h"

@interface Pg6ViewController ()

@property CGFloat pgHeight;
@property CGFloat pgWidth;

@end

@implementation Pg6ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Custom initialization.
        self.title = @"Pg 6";
        self.tabBarItem.image = [UIImage imageNamed:@"man343"];
    }
    
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *page6MainView = self.view;
    page6MainView.backgroundColor = [UIColor grayColor];
    _pgHeight = page6MainView.bounds.size.height;
    _pgWidth  = page6MainView.bounds.size.width;
    
    /* Add Labels */
    
    self.label1 = [UILabel new];
    self.label1.backgroundColor = [UIColor yellowColor];
    self.label1.text = @"Label 1";
    self.label1.textAlignment = NSTextAlignmentCenter;
    [page6MainView addSubview:self.label1];
    
    self.label2 = [UILabel new];
    self.label2.backgroundColor = [UIColor cyanColor];
    self.label2.text = @"Label 2";
    self.label2.textAlignment = NSTextAlignmentCenter;
    [page6MainView addSubview:self.label2];
    
    self.label3= [UILabel new];
    self.label3.backgroundColor = [UIColor whiteColor];
    self.label3.text = @"Label 3";
    self.label3.textAlignment = NSTextAlignmentCenter;
    [page6MainView addSubview:self.label3];
    
    /* Add Buttons */
    
    self.button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.button1.layer.cornerRadius = 5.0;
    self.button1.backgroundColor = [UIColor orangeColor];
    [self.button1 setTitle:@"Button 1" forState:UIControlStateNormal];
    [page6MainView addSubview: self.button1];
    
    UIButton *widenBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    widenBtn.layer.cornerRadius = 5.0;
    widenBtn.backgroundColor = [UIColor orangeColor];
    [widenBtn setTitle:@"Widen Labels" forState:UIControlStateNormal];
    [page6MainView addSubview: widenBtn];
    [widenBtn addTarget:self
                 action:@selector(doWidenLabels:)
       forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *resetBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    resetBtn.layer.cornerRadius = 5.0;
    resetBtn.backgroundColor = [UIColor orangeColor];
    [resetBtn setTitle:@"Reset Labels" forState:UIControlStateNormal];
    [page6MainView addSubview: resetBtn];
    [resetBtn addTarget:self
                 action:@selector(doResetLabels:)
       forControlEvents:UIControlEventTouchUpInside];

    /*  */
    
    self.label1.translatesAutoresizingMaskIntoConstraints = NO;
    self.label2.translatesAutoresizingMaskIntoConstraints = NO;
    self.label3.translatesAutoresizingMaskIntoConstraints = NO;
    self.button1.translatesAutoresizingMaskIntoConstraints = NO;
    widenBtn.translatesAutoresizingMaskIntoConstraints = NO;
    resetBtn.translatesAutoresizingMaskIntoConstraints = NO;
    
    /* Give label2's layout priority over label1 */
    
    [self.label2 setContentCompressionResistancePriority:751 forAxis:UILayoutConstraintAxisHorizontal];
    
    /* Create an NSDictionary of subviews */
    
    NSDictionary *subViews = NSDictionaryOfVariableBindings(_label1, _label2, _label3, _button1, widenBtn, resetBtn);
    
    // label1 is 75 pts from the top and 10 pts from the left.
    
    [page6MainView addConstraints:
     [NSLayoutConstraint
      constraintsWithVisualFormat:@"H:|-10-[_label1]"
      options:0 metrics:nil views:subViews]];

    [page6MainView addConstraints:
     [NSLayoutConstraint
      constraintsWithVisualFormat:@"V:|-75-[_label1]"
      options:0 metrics:nil views:subViews]];
    
    // label2 is 75 pts from the top and 10 pts from the right.
    
    [page6MainView addConstraints:
     [NSLayoutConstraint
      constraintsWithVisualFormat:@"H:[_label2]-10-|"
      options:0 metrics:nil views:subViews]];
    
    [page6MainView addConstraints:
     [NSLayoutConstraint
      constraintsWithVisualFormat:@"V:|-75-[_label2]"
      options:0 metrics:nil views:subViews]];
    
    // label1 must be 20 pts or more from label2
    
    [page6MainView addConstraints:
     [NSLayoutConstraint
      constraintsWithVisualFormat:@"H:[_label1]-(>=20)-[_label2]"
      options:0 metrics:nil views:subViews]];
    
    // label3 is 150 pts from the bottom and 10 pts from the right.
    
    [page6MainView addConstraints:
     [NSLayoutConstraint
      constraintsWithVisualFormat:@"H:|-10-[_label3]"
      options:0 metrics:nil views:subViews]];
    
    [page6MainView addConstraints:
     [NSLayoutConstraint
      constraintsWithVisualFormat:@"V:[_label3]-150-|"
      options:0 metrics:nil views:subViews]];
    
    // button1 must be 150 pts from the bottom and centered.
    
    [page6MainView addConstraints:
     [NSLayoutConstraint
      constraintsWithVisualFormat:@"V:[_button1]-150-|"
      options:0 metrics:nil views:subViews]];
    
    NSLayoutConstraint *buttonCon = [NSLayoutConstraint
                                     constraintWithItem:_button1
                                     attribute:NSLayoutAttributeCenterX
                                     relatedBy:0 toItem:page6MainView
                                     attribute:NSLayoutAttributeCenterX
                                     multiplier:1
                                     constant:0];
    buttonCon.priority = 700;
    [page6MainView addConstraint:buttonCon];
    
    //
    
    [page6MainView addConstraints:
     [NSLayoutConstraint
      constraintsWithVisualFormat:@"H:|-(>=10)-[_label3]-[_button1]-(>=10)-|"
      options:NSLayoutFormatAlignAllBaseline metrics:nil views:subViews]];
    
    // Widen button is 60 pts from the bottom and 10 pts or more from the left.
    
    [page6MainView addConstraints:
     [NSLayoutConstraint
      constraintsWithVisualFormat:@"V:[widenBtn]-60-|"
      options:0 metrics:nil views:subViews]];
    
    [page6MainView addConstraints:
     [NSLayoutConstraint
      constraintsWithVisualFormat:@"H:|-(>=10)-[widenBtn]"
      options:0 metrics:nil views:subViews]];
    
    // Reset button is 60 pts from the bottom and 10 pts or more from the left.
    
    [page6MainView addConstraints:
     [NSLayoutConstraint
      constraintsWithVisualFormat:@"V:[resetBtn]-60-|"
      options:0 metrics:nil views:subViews]];
    
    [page6MainView addConstraints:
     [NSLayoutConstraint
      constraintsWithVisualFormat:@"H:|-(>=10)-[resetBtn]"
      options:0 metrics:nil views:subViews]];
    
    // Widen button must be 20 pts or more from Reset button
    
    [page6MainView addConstraints:
     [NSLayoutConstraint
      constraintsWithVisualFormat:@"H:[widenBtn]-(>=40)-[resetBtn]"
      options:0 metrics:nil views:subViews]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)doWidenLabels:(UIButton *)sender {
    
    self.label1.text = [self.label1.text stringByAppendingString:@">>>>"];
    self.label2.text = [self.label2.text stringByAppendingString:@"<<<<"];
    self.label3.text = [self.label3.text stringByAppendingString:@">>>>"];

}

- (void)doResetLabels:(UIButton *)sender {
    
    self.label1.text = @"Label 1";
    self.label2.text = @"Label 2";
    self.label3.text = @"Label 3";
    
}

@end
