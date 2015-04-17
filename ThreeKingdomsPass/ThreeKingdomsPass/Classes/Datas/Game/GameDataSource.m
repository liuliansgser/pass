//
//  GameDataSource.m
//  ThreeKingdomsPass
//
//  Created by 刘潋 on 15/4/17.
//  Copyright (c) 2015年 LiuLian. All rights reserved.
//

#import "GameDataSource.h"

@implementation GameDataSource

+ (GameDataSource *)shareInstance {
    static GameDataSource *__singletion;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        __singletion = [[self alloc] init];
    });
    return __singletion;
}

- (id)init
{
    if (self = [super init]) {
        _survivalRoles = [NSMutableArray new];
    }
    return self;
}

@end
