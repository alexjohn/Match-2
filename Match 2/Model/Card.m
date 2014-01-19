//
//  Card.m
//  Match 2
//
//  Created by Alex John on 1/19/14.
//  Copyright (c) 2014 Alex John. All rights reserved.
//

#import "Card.h"

@implementation Card

- (NSInteger)match:(NSArray *)otherCards
{
    NSInteger score = 0;
    
    for (Card *card in otherCards) {
        for (Card *otherCard in otherCards) {
            if (card != otherCard) {
                if ([card.contents isEqualToString:otherCard.contents]) {
                    score += 1;
                }
            }
        }
    }
    
    return score;
}

@end
