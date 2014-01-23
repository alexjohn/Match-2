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

/*- (IBAction)touchCardButton:(UIButton *)sender
{
    int chosenButtonIndex = [self.cards indexOfObject:sender];
    [self.game chooseCardAtIndex:chosenButtonIndex];
    [self updateUI];
}

- (IBAction)dealButton
{
    self.game = nil;
    [self updateUI];
}*/

- (void)updateUI
{
    for (UIButton *cardButton in self.cards) {
        // this needs to change. probably need to implement the new card to get a better idea of how.
        int cardButtonIndex = [self.cards indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardButtonIndex];
        
        [cardButton setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundImageForCard:card]
                              forState:UIControlStateNormal];
        cardButton.enabled = !card.isMatched;
    }
    
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d", self.game.score];
}

- (NSString *)titleForCard:(Card *)card
{
    return card.selected ? card.contents : @"";
}

- (UIImage *)backgroundImageForCard:(Card *)card
{
    return [UIImage imageNamed:card.isSelected ? @"cardFront" : @"cardBack"];
}

@end

