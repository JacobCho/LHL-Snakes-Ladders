//
//  Square.h
//  Snakes & Ladders
//
//  Created by Jacob Cho on 2014-10-11.
//  Copyright (c) 2014 Jacob Cho. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Player;
@interface Square : NSObject

@property (nonatomic, assign) BOOL hasSnake;
@property (nonatomic, assign) BOOL hasLadder;
@property (nonatomic, strong) Square *next;
@property (nonatomic, strong) Square *prev;
@property (nonatomic, strong) NSString *name;


+(NSMutableArray *)initializeBoard:(NSString *)boardSize;
+(void)initializePointers:(NSString *)boardSize withBoard:(NSMutableArray *)board;
+(void)setLadders:(NSInteger *)ladders withBoard:(NSMutableArray *)board withRowSize:(NSString *)rowSize;
-(Square *)hitLadder:(Player *)player withRowSize:(NSString *)rowSize;
+(void)setSnakes:(NSInteger *)snakes withBoard:(NSMutableArray *)board withRowSize:(NSString *)rowSize;
-(Square *)hitSnake:(Player *)player withRowSize:(NSString *)rowSize;
+(int)randomNumber:(NSString *)number;
@end
