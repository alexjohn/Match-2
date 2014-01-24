//
//  MatchViewController.h
//  Match 2
//
//  Created by Alex John on 1/19/14.
//  Copyright (c) 2014 Alex John. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CardMatchingGame.h"
#import "Deck.h"

@interface MatchViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *boundingView;

@property (strong, nonatomic) CardMatchingGame *game;
// mutable array of card views here

- (Deck *)createDeck; // abstract

@end
