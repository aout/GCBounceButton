//
//  GCBounceButton.m
//  GCBounceButton
//
//  Created by Guillaume CASTELLANA on 13/6/14.
//  Copyright (c) 2014 Guillaume CASTELLANA. All rights reserved.
//

#import "GCBounceButton.h"

@implementation GCBounceButton

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self) {
        [self commonInit];
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self) {
        [self commonInit];
    }
    
    return self;
}

- (void)commonInit
{
    self.bounceDuration = 0.2;
    self.bounceScale = 1.2;
    // Add actions
    [self addObserver:self forKeyPath:@"selected" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
}


#pragma mark - Animation

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if ([keyPath isEqualToString:@"selected"] && object == self) {
        [self invalidateIntrinsicContentSize];
        [self bounce];
    }
}

- (void)bounce
{
    CAKeyframeAnimation *bounceAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    bounceAnimation.values = @[
                               [NSValue valueWithCATransform3D:CATransform3DIdentity],
                               [NSValue valueWithCATransform3D:CATransform3DMakeScale(self.bounceScale, self.bounceScale, self.bounceScale)],
                               [NSValue valueWithCATransform3D:CATransform3DIdentity]
                               ];
    bounceAnimation.duration = self.bounceDuration;
    bounceAnimation.removedOnCompletion = NO;
    bounceAnimation.fillMode = kCAFillModeForwards;
    
    [self.imageView.layer addAnimation:bounceAnimation forKey:@"bounceAnimation"];
}


@end
