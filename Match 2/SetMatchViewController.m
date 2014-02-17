//
//  SetMatchViewController.m
//  Match 2
//
//  Created by Alex John on 1/20/14.
//  Copyright (c) 2014 Alex John. All rights reserved.
//

#import "SetMatchViewController.h"
#import "SetCardView.h"

@interface SetMatchViewController ()

@end

@implementation SetMatchViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
    CGRect frame = CGRectMake(100, 100, 100, 100);
    
    SetCardView *card = [[SetCardView alloc] initWithFrame:frame];
        
    // card.name = @"joey";
    
    [self.view addSubview:card];
}

@end
