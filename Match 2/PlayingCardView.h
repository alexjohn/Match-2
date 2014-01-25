//
//  PlayingCardView.h
//  SuperCard
//
//  Created by Alex John on 1/13/14.
//  Copyright (c) 2014 Alex John. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayingCardView : UIView

@property (nonatomic) NSUInteger rank;
@property (nonatomic, strong) NSString *suit;
@property (nonatomic) BOOL faceUp;

- (void)pinch:(UIPinchGestureRecognizer *)gesture;
- (void)swipe:(UISwipeGestureRecognizer *)gesture;

@end
