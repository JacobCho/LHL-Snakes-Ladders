//
//  main.m
//  Snakes & Ladders
//
//  Created by Jacob Cho on 2014-10-11.
//  Copyright (c) 2014 Jacob Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "Square.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char diff [100];
        char size [100];
        Player *player1 = [[Player alloc] init];
        Player *player2 = [[Player alloc] init];
        
        while (YES) {
            
            NSLog(@"Please enter your board size:");
            scanf("%100s",size);
            NSString *boardSize = [[NSString alloc] initWithUTF8String: size];
            NSLog(@"%i", [boardSize integerValue]);
            
            // Take integer boardSize and make grid
            NSMutableArray *board = [Square initializeBoard:boardSize];
            
            NSLog(@"%@", board);
            
            // Total number of squares on the grid
            NSInteger *totalSquares = [boardSize integerValue] * [boardSize integerValue];
            NSLog(@"%i", totalSquares);
            
            Square *startingSquare = [[board objectAtIndex:0] objectAtIndex:0];
            player1.currentSquare = startingSquare;
            player2.currentSquare = startingSquare;
            NSLog(@"Square 1: %@", player1.currentSquare);
            NSLog(@"Square 2: %@", player1.currentSquare.next);
            NSLog(@"Square 3: %@", player1.currentSquare.next.next);
            NSLog(@"Square 4: %@", player1.currentSquare.next.next.next);
            NSLog(@"Square 5: %@", player1.currentSquare.next.next.next.next);
            NSLog(@"Square 6: %@", player1.currentSquare.next.next.next.next.next);
            NSLog(@"Square 7: %@", player1.currentSquare.next.next.next.next.next.next);
            NSLog(@"Square 8: %@", player1.currentSquare.next.next.next.next.next.next.next);
            
            [player1 movePlayer:player1 withNumberOfTurns:9 andBoardSize:boardSize];
            NSLog(@"I'm now at: %@", player1.currentSquare);
            
            
            NSLog(@"Please enter your difficulty (Easy, Medium, or Hard):");
            scanf("%100s", diff);
            NSString *response = [[NSString alloc] initWithUTF8String: diff];

            
            if ([response isEqualToString:@"Easy"]) {
                NSLog(@"You have choosen Easy mode");
                
                NSInteger *ladders = (int)totalSquares / 3;
                NSLog(@"%i ladders", ladders);
                
                NSInteger *snakes = (int)totalSquares / 5;
                NSLog(@"%i snakes", snakes);
                
                
              
            }
            
            else if ([response isEqualToString:@"Medium"]) {
                NSLog(@"You have choosen Medium mode");
                
                NSInteger *ladders = (int)totalSquares / 4;
                NSLog(@"%i ladders", ladders);
                
                NSInteger *snakes = (int)totalSquares / 4;
                NSLog(@"%i snakes", snakes);
                
            }
            
            else if ([response isEqualToString:@"Hard"]) {
                NSLog(@"You have choosen Hard mode");
                
                NSInteger *ladders = (int)totalSquares / 5;
                NSLog(@"%i ladders", ladders);
                
                NSInteger *snakes = (int)totalSquares / 2;
                NSLog(@"%i snakes", snakes);
                
            }
            
            else {
                NSLog(@"That is not a valid difficulty");
            }
            
        }
    }
    return 0;
    
    
    
}

