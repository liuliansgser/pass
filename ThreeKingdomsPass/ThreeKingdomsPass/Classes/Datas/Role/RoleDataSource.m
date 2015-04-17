//
//  RoleDataSource.m
//  ThreeKingdomsPass
//
//  Created by 刘潋 on 15/4/16.
//  Copyright (c) 2015年 LiuLian. All rights reserved.
//

#import "RoleDataSource.h"

@implementation RoleDataSource

- (id)init
{
    if (self = [super init]) {
        //----手牌区----
        _cards = [NSMutableArray new];
        _T_KILL = YES;
        _U_KILL = YES;
        
        //----装备区----
        _equipment = [RoleDataEquipmentDataSource new];
        
        //----判定区----
        _verdicts = [NSMutableArray new];
        
        //----技能区----
        _T_SSQY = YES;
        _isTrickNoDistanceLimitation = NO;
        _T_GHCQ = YES;
        _T_JD = YES;
        _T_JDSR = YES;
        _T_TSLH = YES;
        _T_NMRQ = YES;
        _T_WJQF = YES;
        _T_HG = YES;
        _T_LBSS = YES;
        _T_SD = YES;
        _T_BLCD = YES;
        _T_WXKJ = YES;
        _P_BLCD = NO;
    }
    return self;
}

@end
