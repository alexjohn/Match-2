//
//  PlayingCardMatchViewController.m
//  Match 2
//
//  Created by Alex John on 1/20/14.
//  Copyright (c) 2014 Alex John. All rights reserved.
//

#import "PlayingCardMatchViewController.h"
#import "Grid.h"
#import "PlayingCardView.h"

@interface PlayingCardMatchViewController ()

@end

@implementation PlayingCardMatchViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    Grid *grid = [[Grid alloc] init];
    
    grid.cellAspectRatio = (self.boundingView.bounds.size.width / self.boundingView.bounds.size.height);
    grid.size = self.boundingView.bounds.size;
    grid.minimumNumberOfCells = 20;
    
    self.boundingView.backgroundColor = nil;
    self.boundingView.opaque = NO;
    
    for (int row = 0; row < grid.rowCount; row++) {
        for (int col = 0; col < grid.columnCount; col++) {
            CGRect frame = [grid frameOfCellAtRow:row inColumn:col];
            frame.size = grid.cellSize;
            
            PlayingCardView *card = [[PlayingCardView alloc] initWithFrame:frame];
            
            card.faceUp = YES;
            card.suit = @"♠︎";
            card.rank = 1;
            
            card.backgroundColor = nil;
            
            [self.boundingView addSubview:card];
            
            [card addGestureRecognizer:[[UISwipeGestureRecognizer alloc] initWithTarget:card action:@selector(swipe:)]];
        }
    }
}

@end
