//
//  MatchViewController.m
//  Match 2
//
//  Created by Alex John on 1/19/14.
//  Copyright (c) 2014 Alex John. All rights reserved.
//

#import "MatchViewController.h"

@interface MatchViewController ()

@property (strong, nonatomic) NSMutableArray *cards;

@end

@implementation MatchViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (CardMatchingGame *)game
{
    if (!_game) _game = [[CardMatchingGame alloc] initWithCardCount:[self.cards count] usingDeck:[self createDeck]];
    
    return _game;
}

- (Deck *)createDeck
{
    return nil;
}

/*- (IBAction)dealButton
{
    self.game = nil;
    [self updateUI];
}*/

- (void)updateUI
{

}

@end

