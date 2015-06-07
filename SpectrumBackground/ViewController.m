//
//  ViewController.m
//  SpectrumBackground
//
//  Created by Mark Hall on 2015-06-06.
//  Copyright (c) 2015 Mark Hall. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)didPan:(UIPanGestureRecognizer *)gesture {
    NSLog(@"%f, %f", [gesture locationInView:self.view].x, [gesture locationInView:self.view].y);
    CGFloat x = [gesture locationInView:self.view].x;
    CGFloat y = [gesture locationInView:self.view].y;
    NSInteger intX = (int)x % 255;
    NSInteger intY = (int)y % 255;
    self.view.backgroundColor = [UIColor colorWithRed:x/255.0 green:y/255.0 blue:(x+y)/255.0 alpha:1.0];
    
}

@end
