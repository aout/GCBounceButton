//
//  ViewController.m
//  GCBounceButton
//
//  Created by Guillaume CASTELLANA on 13/6/14.
//  Copyright (c) 2014 Guillaume CASTELLANA. All rights reserved.
//

#import "ViewController.h"
#import "GCBounceButton.h"

@interface ViewController ()

@property (nonatomic, retain) IBOutlet GCBounceButton* favButton;
@property (nonatomic, retain) IBOutlet GCBounceButton* bellButton;

@property (nonatomic, retain) IBOutlet UILabel* durationLabel;
@property (nonatomic, retain) IBOutlet UILabel* scaleLabel;

@property (nonatomic, retain) IBOutlet UISlider* durationSlider;
@property (nonatomic, retain) IBOutlet UISlider* scaleSlider;

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

- (IBAction)didPressButton:(UIButton*)sender
{
    sender.selected = !sender.selected;
}

- (IBAction)didChangeDurationSlider:(UISlider*)sender
{
    self.durationLabel.text = [NSString stringWithFormat:@"%.2fs", sender.value];
    self.favButton.bounceDuration = sender.value;
    self.bellButton.bounceDuration = sender.value;
}

- (IBAction)didChangeScaleSlider:(UISlider*)sender
{
    self.scaleLabel.text = [NSString stringWithFormat:@"%.1fx", sender.value];
    self.favButton.bounceScale = sender.value;
    self.bellButton.bounceScale = sender.value;
}

@end
