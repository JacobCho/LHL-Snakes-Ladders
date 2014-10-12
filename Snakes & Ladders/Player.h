//
//  Player.h
//  Snakes & Ladders
//
//  Created by Jacob Cho on 2014-10-11.
//  Copyright (c) 2014 Jacob Cho. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Square;
@interface Player : NSObject

@property (nonatomic, strong) Square *currentSquare;


-(Square *)movePlayer:(Player *)player withNumberOfTurns:(int)moves andBoardSize:(int)boardSize;

@end
