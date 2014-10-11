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
            
            
            NSMutableArray *board = [[NSMutableArray alloc] init];
            
            for (int j = 0; j < [boardSize integerValue]; j++) {
                NSMutableArray *row = [[NSMutableArray alloc] init];
                for (int i = 0; i < [boardSize integerValue]; i++) {
                    
                    [row addObject:[[Square alloc] init]];
                }
                [board addObject:row];
            }
            
            NSLog(@"%@",[[board objectAtIndex:0] objectAtIndex:0]);
            
            NSLog(@"Please enter your difficulty (Easy, Medium, or Hard):");
            scanf("%100s", diff);
            NSString *response = [[NSString alloc] initWithUTF8String: diff];
            
            if ([response isEqualToString:@"Easy"]) {
                NSLog(@"You have choosen Easy mode");
                
              
            }
            
            else if ([response isEqualToString:@"Medium"]) {
                NSLog(@"You have choosen Medium mode");
                
                
                
            }
            
            else if ([response isEqualToString:@"Hard"]) {
                NSLog(@"You have choosen Hard mode");
                
                
            }
            
            else {
                NSLog(@"That is not a valid difficulty");
            }
            
        }
    }
    return 0;
}
