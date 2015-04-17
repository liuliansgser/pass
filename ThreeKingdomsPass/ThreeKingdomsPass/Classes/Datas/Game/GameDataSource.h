//
//  GameDataSource.h
//  ThreeKingdomsPass
//
//  Created by 刘潋 on 15/4/17.
//  Copyright (c) 2015年 LiuLian. All rights reserved.
//

#import <Foundation/Foundation.h>

#define GAME [GameDataSource shareInstance]

@interface GameDataSource : NSObject

@property (nonatomic ,strong) NSMutableArray *survivalRoles;

//单例模式
+ (GameDataSource *)shareInstance;

@end
