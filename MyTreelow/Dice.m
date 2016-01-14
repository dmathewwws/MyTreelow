//
//  Dice.m
//  MyTreelow
//
//  Created by Daniel Mathews on 2016-01-13.
//  Copyright © 2016 Daniel Mathews. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self randomize];
    }
    return self;
}

-(void) randomize {
    _value = arc4random_uniform(6) + 1;
}


@end
