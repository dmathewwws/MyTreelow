//
//  Dice.h
//  MyTreelow
//
//  Created by Daniel Mathews on 2016-01-13.
//  Copyright © 2016 Daniel Mathews. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic) int value;

-(void) randomize;

@end
