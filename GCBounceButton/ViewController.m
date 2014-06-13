//
//  ViewController.m
//  GCBounceButton
//
//  Created by Guillaume CASTELLANA on 13/6/14.
//  Copyright (c) 2014 Guillaume CASTELLANA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didPressButton:(id)sender
{
    UIButton* button = (UIButton*)sender;
    button.selected = !button.selected;
}

@end
