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
    
    for (int j = 0; j < [boardSize integerValue]; j++) {
        NSMutableArray *row = [[NSMutableArray alloc] init];
        for (int i = 0; i < [boardSize integerValue]; i++) {
            Square *square = [[Square alloc] init];
            [row addObject:square];
        }
        [board addObject:row];
    }
    
    return board;
    
}

@end
