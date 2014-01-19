//
//  CardMatchingGame.h
//  Match 2
//
//  Created by Alex John on 1/19/14.
//  Copyright (c) 2014 Alex John. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Card.h"

@interface CardMatchingGame : NSObject

@property (nonatomic, readonly) NSInteger score;
@property (nonatomic) NSUInteger numCardsToMatch;

// designated initializer
- (instancetype)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck;
- (void)chooseCardAtIndex:(NSUInteger)index;

@end
