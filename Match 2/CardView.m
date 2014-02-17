//
//  CardView.m
//  Match2
//
//  Created by Alex John on 2/12/14.
//  Copyright (c) 2014 Alex John. All rights reserved.
//

#import "CardView.h"

@implementation CardView

#pragma mark - Initialization

- (void)setup
{
    self.backgroundColor = nil;
    self.opaque = NO;
    self.contentMode = UIViewContentModeRedraw;
}

- (void)awakeFromNib
{
    [self setup];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setup];
    }
    return self;
}

#pragma mark - drawing

#define  CORNER_FONT_STANDARD_HEIGHT 180.0
#define  CORNER_RADIUS 12.0

- (CGFloat)cornerScaleFactor
{
    return self.bounds.size.height / CORNER_FONT_STANDARD_HEIGHT;
}

- (CGFloat)cornerRadius
{
    return CORNER_RADIUS * [self cornerScaleFactor];
}

- (CGFloat)cornerOffset
{
    return [self cornerRadius] / 3.0;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    UIBezierPath *roundedRect = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:[self cornerRadius]];
    
    [roundedRect addClip];
    
    [[UIColor whiteColor] setFill];
    // the core graphics(C) way
    UIRectFill(self.bounds);
    // [roundedRect fill];
    
    [[UIColor blackColor] setStroke];
    // bezier path way
    [roundedRect stroke];
}

@end
