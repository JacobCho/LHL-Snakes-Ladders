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
            
            NSLog(@"Please enter your column and row length:");
            scanf("%100s",size);
            NSString *boardSize = [[NSString alloc] initWithUTF8String: size];
            
            // Take integer boardSize and make grid
            NSMutableArray *board = [Square initializeBoard:boardSize];
            
//            NSLog(@"%@", board);
            
            // Total number of squares on the grid
            NSInteger *totalSquares = [boardSize integerValue] * [boardSize integerValue];
            NSLog(@"Your grid now has %i total squares", totalSquares);

            
            Square *startingSquare = [[board objectAtIndex:0] objectAtIndex:0];
            player1.currentSquare = startingSquare;
            player2.currentSquare = startingSquare;
            
            NSLog(@"Please enter your difficulty (Easy, Medium, or Hard):");
            scanf("%100s", diff);
            NSString *response = [[NSString alloc] initWithUTF8String: diff];

            
            if ([response isEqualToString:@"Easy"]) {
                NSLog(@"You have choosen Easy mode");
                
                NSInteger *ladders = (int)totalSquares / 5;
                NSLog(@"%i ladders", ladders);
                
                [Square setLadders:ladders withBoard:board withRowSize:boardSize];
                
                NSInteger *snakes = (int)totalSquares / 7;
                NSLog(@"%i snakes", snakes);
                
                [Square setSnakes:snakes withBoard:board withRowSize:boardSize];
                
                while (YES) {
                    
                    Square *finalSquare = [[board objectAtIndex:[boardSize integerValue] -1] objectAtIndex:[boardSize integerValue] -1];
                    char move [100];
                    NSLog(@"Player 1: Please enter your move:");
                    scanf("%100s", move);
                    NSString *player1Move = [[NSString alloc] initWithUTF8String: move];
                    int moves = [player1Move integerValue];
                    
                    [player1 movePlayer:player1 withNumberOfTurns:moves andBoardSize:boardSize];
                    
                    if(player1.currentSquare.hasLadder) {
                        NSLog(@"You hit a ladder! Go up %i squares!", (int)[boardSize integerValue]);
                        player1.currentSquare = [player1.currentSquare hitLadder:player1 withRowSize:boardSize];
                        NSLog(@"You are now at square: %@", player1.currentSquare.name);
                    }
                    
                    if (player1.currentSquare.hasSnake) {
                        NSLog(@"You hit a snake! Go down %i squares!", (int)[boardSize integerValue]);
                        player1.currentSquare = [player1.currentSquare hitSnake:player1 withRowSize:boardSize];
                        NSLog(@"You are now at square: %@", player1.currentSquare.name);
                    }

                    
                    if (player1.currentSquare == finalSquare) {
                        NSLog(@"Player 1 wins!");
                        NSLog(@"Game Over!");
                        break;
                    }
                    
                    
                    NSLog(@"Player 2: Please enter your move:");
                    
                    scanf("%100s", move);
                    NSString *player2Move = [[NSString alloc] initWithUTF8String: move];
                    moves = [player2Move integerValue];
                    
                    [player2 movePlayer:player2 withNumberOfTurns:moves andBoardSize:boardSize];
                    
                    if(player2.currentSquare.hasLadder) {
                        NSLog(@"You hit a ladder! Go up %i squares!", (int)[boardSize integerValue]);
                        player2.currentSquare = [player2.currentSquare hitLadder:player2 withRowSize:boardSize];
                        NSLog(@"You are now at square: %@", player2.currentSquare.name);
                    }
                    
                    if (player2.currentSquare.hasSnake) {
                        NSLog(@"You hit a snake! Go down %i squares!", (int)[boardSize integerValue]);
                        player2.currentSquare = [player2.currentSquare hitSnake:player2 withRowSize:boardSize];
                        NSLog(@"You are now at square: %@", player2.currentSquare.name);
                    }
                    
                    if (player2.currentSquare == finalSquare) {
                        NSLog(@"Player 2 wins!");
                        NSLog(@"Game Over!");
                        break;
                    }
                }
              
            }
            
            else if ([response isEqualToString:@"Medium"]) {
                NSLog(@"You have choosen Medium mode");
                
                NSInteger *ladders = (int)totalSquares / 6;
                NSLog(@"%i ladders", ladders);
                
                [Square setLadders:ladders withBoard:board withRowSize:boardSize];
                
                NSInteger *snakes = (int)totalSquares / 6;
                NSLog(@"%i snakes", snakes);
                
                [Square setSnakes:snakes withBoard:board withRowSize:boardSize];
                
                while (YES) {
                    
                    Square *finalSquare = [[board objectAtIndex:[boardSize integerValue] -1] objectAtIndex:[boardSize integerValue] -1];
                    char move [100];
                    NSLog(@"Player 1: Please enter your move:");
                    scanf("%100s", move);
                    NSString *player1Move = [[NSString alloc] initWithUTF8String: move];
                    int moves = [player1Move integerValue];
                    
                    [player1 movePlayer:player1 withNumberOfTurns:moves andBoardSize:boardSize];
                    
                    if(player1.currentSquare.hasLadder) {
                        NSLog(@"You hit a ladder! Go up %i squares!", (int)[boardSize integerValue]);
                        player1.currentSquare = [player1.currentSquare hitLadder:player1 withRowSize:boardSize];
                        NSLog(@"You are now at square: %@", player1.currentSquare.name);
                    }
                    
                    if (player1.currentSquare.hasSnake) {
                        NSLog(@"You hit a snake! Go down %i squares!", (int)[boardSize integerValue]);
                        player1.currentSquare = [player1.currentSquare hitSnake:player1 withRowSize:boardSize];
                        NSLog(@"You are now at square: %@", player1.currentSquare.name);
                    }
                    
                    
                    if (player1.currentSquare == finalSquare) {
                        NSLog(@"Player 1 wins!");
                        NSLog(@"Game Over!");
                        break;
                    }
                    
                    
                    NSLog(@"Player 2: Please enter your move:");
                    
                    scanf("%100s", move);
                    NSString *player2Move = [[NSString alloc] initWithUTF8String: move];
                    moves = [player2Move integerValue];
                    
                    [player2 movePlayer:player2 withNumberOfTurns:moves andBoardSize:boardSize];
                    
                    if(player2.currentSquare.hasLadder) {
                        NSLog(@"You hit a ladder! Go up %i squares!", (int)[boardSize integerValue]);
                        player2.currentSquare = [player2.currentSquare hitLadder:player2 withRowSize:boardSize];
                        NSLog(@"You are now at square: %@", player2.currentSquare.name);
                    }
                    
                    if (player2.currentSquare.hasSnake) {
                        NSLog(@"You hit a snake! Go down %i squares!", (int)[boardSize integerValue]);
                        player2.currentSquare = [player2.currentSquare hitSnake:player2 withRowSize:boardSize];
                        NSLog(@"You are now at square: %@", player2.currentSquare.name);
                    }
                    
                    if (player2.currentSquare == finalSquare) {
                        NSLog(@"Player 2 wins!");
                        NSLog(@"Game Over!");
                        break;
                    }
                }
            }
            
            else if ([response isEqualToString:@"Hard"]) {
                NSLog(@"You have choosen Hard mode");
                
                NSInteger *ladders = (int)totalSquares / 8;
                NSLog(@"%i ladders", ladders);
                
                [Square setLadders:ladders withBoard:board withRowSize:boardSize];
                
                NSInteger *snakes = (int)totalSquares / 3;
                NSLog(@"%i snakes", snakes);
                
                [Square setSnakes:snakes withBoard:board withRowSize:boardSize];
                
                while (YES) {
                    
                    Square *finalSquare = [[board objectAtIndex:[boardSize integerValue] -1] objectAtIndex:[boardSize integerValue] -1];
                    char move [100];
                    NSLog(@"Player 1: Please enter your move:");
                    scanf("%100s", move);
                    NSString *player1Move = [[NSString alloc] initWithUTF8String: move];
                    int moves = [player1Move integerValue];
                    
                    [player1 movePlayer:player1 withNumberOfTurns:moves andBoardSize:boardSize];
                    
                    if(player1.currentSquare.hasLadder) {
                        NSLog(@"You hit a ladder! Go up %i squares!", (int)[boardSize integerValue]);
                        player1.currentSquare = [player1.currentSquare hitLadder:player1 withRowSize:boardSize];
                        NSLog(@"You are now at square: %@", player1.currentSquare.name);
                    }
                    
                    if (player1.currentSquare.hasSnake) {
                        NSLog(@"You hit a snake! Go down %i squares!", (int)[boardSize integerValue]);
                        player1.currentSquare = [player1.currentSquare hitSnake:player1 withRowSize:boardSize];
                        NSLog(@"You are now at square: %@", player1.currentSquare.name);
                    }
                    
                    
                    if (player1.currentSquare == finalSquare) {
                        NSLog(@"Player 1 wins!");
                        NSLog(@"Game Over!");
                        break;
                    }
                    
                    
                    NSLog(@"Player 2: Please enter your move:");
                    
                    scanf("%100s", move);
                    NSString *player2Move = [[NSString alloc] initWithUTF8String: move];
                    moves = [player2Move integerValue];
                    
                    [player2 movePlayer:player2 withNumberOfTurns:moves andBoardSize:boardSize];
                    
                    if(player2.currentSquare.hasLadder) {
                        NSLog(@"You hit a ladder! Go up %i squares!", (int)[boardSize integerValue]);
                        player2.currentSquare = [player2.currentSquare hitLadder:player2 withRowSize:boardSize];
                        NSLog(@"You are now at square: %@", player2.currentSquare.name);
                    }
                    
                    if (player2.currentSquare.hasSnake) {
                        NSLog(@"You hit a snake! Go down %i squares!", (int)[boardSize integerValue]);
                        player2.currentSquare = [player2.currentSquare hitSnake:player2 withRowSize:boardSize];
                        NSLog(@"You are now at square: %@", player2.currentSquare.name);
                    }
                    
                    if (player2.currentSquare == finalSquare) {
                        NSLog(@"Player 2 wins!");
                        NSLog(@"Game Over!");
                        break;
                    }
                }
                
            }
            
            else {
                NSLog(@"That is not a valid difficulty");
            }
            
        }
    }
    return 0;
    
    
    
}

