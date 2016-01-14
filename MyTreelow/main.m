//
//  main.m
//  MyTreelow
//
//  Created by Daniel Mathews on 2016-01-13.
//  Copyright © 2016 Daniel Mathews. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        GameController *gameController = [[GameController alloc] initWithDiceNumber:5];
        InputCollector *inputCollector = [[InputCollector alloc] init];
    
        BOOL userCurrentlyPlaying = YES;
        
        while (userCurrentlyPlaying) {
            
            NSString *input = [inputCollector inputForPrompt:@"roll, hold, or quit"];
            
            if ([input isEqualToString:@"roll\n"]){
                
                [gameController rollDice];
                
                
            
            
            }else if ([input isEqualToString:@"quit\n"]){
                
                userCurrentlyPlaying = NO;
                
            }else if ([input isEqualToString:@"hold\n"]){
                
                NSString *heldDiceInput = [inputCollector inputForPrompt:@"what index do you want to hold?"];
                int index = [heldDiceInput intValue];
            
                [gameController holdDiceAtIndex:index];

                
            }
        
        }
    
        
        
    }
    return 0;
}
