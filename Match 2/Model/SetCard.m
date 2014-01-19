//
//  SetCard.m
//  Match 2
//
//  Created by Alex John on 1/19/14.
//  Copyright (c) 2014 Alex John. All rights reserved.
//

#import "SetCard.h"

@implementation SetCard

- (NSString *)contents
{
    return [self.attributes description];
}

- (NSInteger)match:(NSArray *)otherCards
{
    NSInteger score = 0;
    
    /*for (SetCard *card in otherCards) {
        for (SetCard *otherCard in otherCards) {
            if (card != otherCard) {
                // NSLog(@"%@\n%@", card, otherCard);
                // this is going to be impossible to test until the set cards are displayed properly
                ;
            }
        }
    }*/
    
    return score;
}

@end
