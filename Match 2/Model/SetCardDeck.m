//
//  SetCardDeck.m
//  Match 2
//
//  Created by Alex John on 1/19/14.
//  Copyright (c) 2014 Alex John. All rights reserved.
//

#import "SetCardDeck.h"
#import "SetCard.h"

@implementation SetCardDeck

static const int defaultNumAttributes = 3;

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        for (int number = 0; number < defaultNumAttributes; number++) {
            for (int shade  = 0; shade < defaultNumAttributes; shade++) {
                for (int color = 0; color < defaultNumAttributes; color++) {
                    for (int symbol = 0; symbol < defaultNumAttributes; symbol++) {
                        SetCard *card = [[SetCard alloc] init];
                        
                        NSDictionary *attributes = [[NSDictionary alloc] initWithObjects:@[[NSNumber numberWithInt:number + 1],
                                                                                           [NSNumber numberWithInt:shade],
                                                                                           [NSNumber numberWithInt:color],
                                                                                           [NSNumber numberWithInt:symbol]]
                                                                                 forKeys:@[@"numberOfShapes", @"shade", @"color", @"shape"]];
                        card.attributes = attributes;
                        [self addCard:card];
                    }
                }
            }
        }
    }
    
    return self;
}

@end
