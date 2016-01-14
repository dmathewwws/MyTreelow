//
//  GameController.h
//  MyTreelow
//
//  Created by Daniel Mathews on 2016-01-13.
//  Copyright © 2016 Daniel Mathews. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property (nonatomic) NSMutableArray *diceArray;
@property (nonatomic) NSMutableSet *diceHeldSet;

- (instancetype)initWithDiceNumber:(int)diceNumber;

-(void) rollDice;

-(void) holdDiceAtIndex:(int) indexOfDice;

@end
