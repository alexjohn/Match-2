//
//  Deck.h
//  Match 2
//
//  Created by Alex John on 1/19/14.
//  Copyright (c) 2014 Alex John. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;

@end
