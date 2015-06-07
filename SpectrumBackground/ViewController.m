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
    CGFloat x = [gesture locationInView:self.view].x / self.view.frame.size.width;
    CGFloat y = [gesture locationInView:self.view].y / self.view.frame.size.height;
    y = y + 0.5;
    NSLog(@"%f, %f", x, y);
    self.view.backgroundColor = [UIColor colorWithHue:x saturation:y brightness:1 alpha:1];
    
}

@end
