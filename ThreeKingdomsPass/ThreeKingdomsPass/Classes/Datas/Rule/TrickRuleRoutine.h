//
//  TrickRuleRoutine.h
//  ThreeKingdomsPass
//
//  Created by 刘潋 on 15/4/17.
//  Copyright (c) 2015年 LiuLian. All rights reserved.
//

#import "RuleRoutine.h"

@interface TrickRuleRoutine : RuleRoutine

//判断能否被顺手牵羊
+ (BOOL)judgeThatWhether_SSQY:(RoleDataSource *)_currentRole WithTarget:(RoleDataSource *)_targetRole;

//判断能否被过河拆桥
+ (BOOL)judgeThatWhether_GHCQ:(RoleDataSource *)_currentRole WithTarget:(RoleDataSource *)_targetRole;

//判断能否被决斗
+ (BOOL)judgeThatWhether_JD:(RoleDataSource *)_currentRole WithTarget:(RoleDataSource *)_targetRole;

//判断能否被借刀杀人
+ (BOOL)judgeThatWhether_JDSR:(RoleDataSource *)_currentRole WithTarget:(RoleDataSource *)_targetRole;

//判断能否被铁索连环
+ (BOOL)judgeThatWhether_TSLH:(RoleDataSource *)_currentRole WithTarget:(RoleDataSource *)_targetRole;

//判断能否被南蛮入侵
+ (BOOL)judgeThatWhether_NMRQ:(RoleDataSource *)_currentRole WithTarget:(RoleDataSource *)_targetRole;

//判断能否被万箭齐发
+ (BOOL)judgeThatWhether_WJQF:(RoleDataSource *)_currentRole WithTarget:(RoleDataSource *)_targetRole;

//判断能否被火攻
+ (BOOL)judgeThatWhether_HG:(RoleDataSource *)_currentRole WithTarget:(RoleDataSource *)_targetRole;

//判断能否被乐不思蜀
+ (BOOL)judgeThatWhether_LBSS:(RoleDataSource *)_currentRole WithTarget:(RoleDataSource *)_targetRole;

//判断能否被闪电
+ (BOOL)judgeThatWhether_SD:(RoleDataSource *)_currentRole WithTarget:(RoleDataSource *)_targetRole;

//判断能否被兵粮寸断
+ (BOOL)judgeThatWhether_BLCD:(RoleDataSource *)_currentRole WithTarget:(RoleDataSource *)_targetRole;

//判断能否被无懈可击
+ (BOOL)judgeThatWhether_WXKJ:(RoleDataSource *)_currentRole WithTarget:(RoleDataSource *)_targetRole;

@end
