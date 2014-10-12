//
//  Player.m
//  Snakes & Ladders
//
//  Created by Jacob Cho on 2014-10-11.
//  Copyright (c) 2014 Jacob Cho. All rights reserved.
//

#import "Player.h"
#import "Square.h"

@implementation Player

-(Square *)movePlayer:(Player *)player withNumberOfTurns:(int)moves andBoardSize:(NSString *)boardSize {
    
     NSMutableArray *board = [Square initializeBoard:boardSize];
    
    while (moves > 0) {
        
        player.currentSquare = player.currentSquare.next;
        moves--;
        
    }
    
    return player.currentSquare;
}

@end
