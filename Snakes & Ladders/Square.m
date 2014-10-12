//
//  Square.m
//  Snakes & Ladders
//
//  Created by Jacob Cho on 2014-10-11.
//  Copyright (c) 2014 Jacob Cho. All rights reserved.
//

#import "Square.h"

@implementation Square

+(NSMutableArray *)initializeBoard:(NSString *)boardSize {
    
    NSMutableArray *board = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < [boardSize integerValue]; i++) {
        NSMutableArray *row = [[NSMutableArray alloc] init];
        for (int j = 0; j < [boardSize integerValue]; j++) {
            Square *square = [[Square alloc] init];
            [row addObject:square];
        }
        [board addObject:row];
    }
    [Square initializePointers:boardSize withBoard:board];
    return board;
    
}

+(void)initializePointers:(NSString *)boardSize withBoard:(NSMutableArray *)board {
    
    int rowSize = [boardSize integerValue];
 
    for (int i = 0; i < rowSize; i++) {
        
        for (int j = 0; j < rowSize; j++) {
            
            Square *startingSquare = [[board objectAtIndex:i] objectAtIndex:j];
        
            if (i == rowSize - 1 && j == rowSize - 1) {
                startingSquare.next = startingSquare;
            }
            else if (j <= rowSize - 2) {
                startingSquare.next = [[board objectAtIndex:i] objectAtIndex: j + 1];
            }
            else {
                startingSquare.next = [[board objectAtIndex:i + 1] objectAtIndex: 0];
            }
        
        }
    }
    // (1, 2)
    
}

@end
