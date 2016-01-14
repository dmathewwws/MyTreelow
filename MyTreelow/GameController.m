//
//  GameController.m
//  MyTreelow
//
//  Created by Daniel Mathews on 2016-01-13.
//  Copyright © 2016 Daniel Mathews. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController


- (instancetype)initWithDiceNumber:(int)diceNumber
{
    self = [super init];
    if (self) {
        
        _diceArray = [NSMutableArray array];
        _diceHeldSet = [NSMutableSet set];
        
        for (int i = 0; i < diceNumber; i++){
            
            Dice *aDice = [[Dice alloc] init];
            
            [_diceArray addObject:aDice];
        
        }
        
    }
    return self;
}

-(void) rollDice {
    
    
    for (int i = 0; i < [self.diceArray count]; i++){
        
        Dice *aDice = self.diceArray[i];
        
        
        if ([self.diceHeldSet containsObject:aDice]){
            
            NSLog(@"[dice%d] = %d", i, aDice.value);

        } else {
            
            [aDice randomize];
            NSLog(@"dice%d = %d", i, aDice.value);

            
        }
        
        
        
    }
    


    
}

-(void) holdDiceAtIndex:(int) indexOfDice {
    
    Dice *aDice = [self.diceArray objectAtIndex:indexOfDice];
    
    [self.diceHeldSet addObject:aDice];
    
    
    
}


@end
