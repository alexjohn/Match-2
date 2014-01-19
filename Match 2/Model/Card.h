//
//  Card.h
//  Match 2
//
//  Created by Alex John on 1/19/14.
//  Copyright (c) 2014 Alex John. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter = isSelected) BOOL selected;
@property (nonatomic, getter = isMatched) BOOL matched;

- (NSInteger)match:(NSArray *)otherCards;

@end
