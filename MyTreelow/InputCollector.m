//
//  InputCollector.m
//  MyTreelow
//
//  Created by Daniel Mathews on 2016-01-13.
//  Copyright © 2016 Daniel Mathews. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString {
    
    NSLog(@"%@", promptString);
    
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    
    return [NSString stringWithCString:inputChars encoding:NSASCIIStringEncoding];
    
}


@end
