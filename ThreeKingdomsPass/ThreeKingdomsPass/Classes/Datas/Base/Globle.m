//
//  Globle.m
//  ThreeKingdomsPass
//
//  Created by 刘潋 on 15/4/17.
//  Copyright (c) 2015年 LiuLian. All rights reserved.
//

#import "Globle.h"

@implementation Globle

+ (Globle *)shareInstance {
    static Globle *__singletion;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        __singletion = [[self alloc] init];
    });
    return __singletion;
}

@end
