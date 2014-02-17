//
//  SetCardView.m
//  Match2
//
//  Created by Alex John on 2/12/14.
//  Copyright (c) 2014 Alex John. All rights reserved.
//

#import "SetCardView.h"

@interface SetCardView ()
@property (strong, nonatomic) UIBezierPath *path;
@end
@implementation SetCardView

- (void)setName:(NSString *)name
{
    _name = @"alex";
    [self setNeedsDisplay];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    // Drawing code
    
    // NSLog(@"got here twice. noice");
    // only called once. I'm guessing that iOS is notified twice that this needs to be drawn, however. Once at creation and again in setName
    
    self.path = [[UIBezierPath alloc] init];
    
    [self.path moveToPoint:CGPointMake(50, 20)];
    /*[self.path addLineToPoint:CGPointMake(80, 80)];
    [self.path addLineToPoint:CGPointMake(20, 80)];*/
    
    [self.path addCurveToPoint:CGPointMake(50, 80) controlPoint1:CGPointMake(120, 35) controlPoint2:CGPointMake(-20, 65)];
    
    [self.path closePath];
    
    UIBezierPath *pip = [[UIBezierPath alloc] init];
    [pip moveToPoint:CGPointMake(10, 50)];
    [pip addLineToPoint:CGPointMake(30, 70)];
    [pip addLineToPoint:CGPointMake(10, 90)];
    [pip closePath];
    
    [[UIColor blueColor] setFill];
    [[UIColor redColor] setStroke];
    
    [self.path fill]; [pip fill];
    [self.path stroke]; [pip stroke];
}

@end
