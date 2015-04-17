//
//  TrickRuleRoutine.m
//  ThreeKingdomsPass
//
//  Created by 刘潋 on 15/4/17.
//  Copyright (c) 2015年 LiuLian. All rights reserved.
//

#import "TrickRuleRoutine.h"
#import "Globle.h"
#import "TrickCard.h"

@implementation TrickRuleRoutine

//判断能否被顺手牵羊
+ (BOOL)judgeThatWhether_SSQY:(RoleDataSource *)_currentRole WithTarget:(RoleDataSource *)_targetRole
{
    //----判断技能----
    if (!_targetRole.T_SSQY) {
        return NO;
    }
    
    if (!_currentRole.isTrickNoDistanceLimitation) {
        //判断触发条件(与目标距离必须是1)
        NSInteger position = abs((int)_currentRole.position - (int)_targetRole.position);
        
        //位置闭环
        if (position == [[RuleRoutine survivalRoles] count] - 1) {
            position = 1;
        }
        
        //自己是否有-1马
        if (_currentRole.equipment.attackHorse.range > 0) position -= _currentRole.equipment.attackHorse.range;
        
        //某角色是否有+1马
        if (_targetRole.equipment.defenseHorse.range > 0) position += _targetRole.equipment.defenseHorse.range;
        
        if (position <= 0) {
            position = 1;
        }
        
        if (position != 1) {
            return NO;
        }
    }
    
    //判断触发条件(目标必须有手牌或装备或判定)
    BOOL hasCards = [RuleRoutine judgeThatTargetHasCards:_targetRole];
    BOOL hasEquipment = [RuleRoutine judgeThatTargetHasEquipment:_targetRole];
    BOOL hasVerdict = [RuleRoutine judgeThatTargetHasVerdicts:_targetRole];
    
    if (!hasCards && !hasEquipment && !hasVerdict) {
        return NO;
    }
    
    return YES;
}

//判断能否被过河拆桥
+ (BOOL)judgeThatWhether_GHCQ:(RoleDataSource *)_currentRole WithTarget:(RoleDataSource *)_targetRole
{
    //----判断技能----
    if (!_targetRole.T_GHCQ) {
        return NO;
    }
    
    //判断触发条件(目标必须有手牌或装备或判定)
    BOOL hasCards = [RuleRoutine judgeThatTargetHasCards:_targetRole];
    BOOL hasEquipment = [RuleRoutine judgeThatTargetHasEquipment:_targetRole];
    BOOL hasVerdict = [RuleRoutine judgeThatTargetHasVerdicts:_targetRole];
    
    if (!hasCards && !hasEquipment && !hasVerdict) {
        return NO;
    }
    
    return YES;
}

//判断能否被决斗
+ (BOOL)judgeThatWhether_JD:(RoleDataSource *)_currentRole WithTarget:(RoleDataSource *)_targetRole
{
    //----判断技能----
    if (!_targetRole.T_JD) {
        return NO;
    }
    
    return YES;
}

//判断能否被借刀杀人
+ (BOOL)judgeThatWhether_JDSR:(RoleDataSource *)_currentRole WithTarget:(RoleDataSource *)_targetRole
{
    //----判断技能----
    if (!_targetRole.T_JDSR) {
        return NO;
    }
    
    //判断触发条件(目标有武器)
    if (![RuleRoutine judgeThatTargetHasWeapon:_targetRole]) {
        return NO;
    }
    
    //判断触发条件(目标攻击范围有存活角色)
    for (RoleDataSource *role in [RuleRoutine survivalRolesGivenByOwn:_targetRole]) {
        if ([RuleRoutine judgeThatCurrentRole:_targetRole AttackAnother:role] && role.T_KILL) {
            return YES;
        }
    }
    
    return NO;
}

//判断能否被铁索连环
+ (BOOL)judgeThatWhether_TSLH:(RoleDataSource *)_currentRole WithTarget:(RoleDataSource *)_targetRole
{
    //----判断技能----
    if (!_targetRole.T_TSLH) {
        return NO;
    }
    
    return YES;
}

//判断能否被南蛮入侵
+ (BOOL)judgeThatWhether_NMRQ:(RoleDataSource *)_currentRole WithTarget:(RoleDataSource *)_targetRole
{
    //----判断技能----
    if (!_targetRole.T_NMRQ) {
        return NO;
    }
    
    return YES;
}

//判断能否被万箭齐发
+ (BOOL)judgeThatWhether_WJQF:(RoleDataSource *)_currentRole WithTarget:(RoleDataSource *)_targetRole
{
    //----判断技能----
    if (!_targetRole.T_WJQF) {
        return NO;
    }
    
    return YES;
}

//判断能否被火攻
+ (BOOL)judgeThatWhether_HG:(RoleDataSource *)_currentRole WithTarget:(RoleDataSource *)_targetRole
{
    //----判断技能----
    if (!_targetRole.T_HG) {
        return NO;
    }
    
    //判断触发条件(目标必须有手牌)
    if ([_targetRole.cards count] == 0) {
        return NO;
    }
    
    return YES;
}

//判断能否被乐不思蜀
+ (BOOL)judgeThatWhether_LBSS:(RoleDataSource *)_currentRole WithTarget:(RoleDataSource *)_targetRole
{
    //----判断技能----
    if (!_targetRole.T_LBSS) {
        return NO;
    }
    
    //判断触发条件(目标已有乐不思蜀等待判定)
    for (TrickCard *card in _targetRole.verdicts) {
        if (card.trickType == TrickCardType_LBSS) {
            return NO;
        }
    }
    
    return YES;
}

//判断能否被闪电
+ (BOOL)judgeThatWhether_SD:(RoleDataSource *)_currentRole WithTarget:(RoleDataSource *)_targetRole
{
    //----判断技能----
    if (!_targetRole.T_SD) {
        return NO;
    }
    
    //判断触发条件(目标已有闪电等待判定)
    for (TrickCard *card in _targetRole.verdicts) {
        if (card.trickType == TrickCardType_SD) {
            return NO;
        }
    }
    
    return YES;
}

//判断能否被兵粮寸断
+ (BOOL)judgeThatWhether_BLCD:(RoleDataSource *)_currentRole WithTarget:(RoleDataSource *)_targetRole
{
    //----判断技能----
    if (!_targetRole.T_BLCD) {
        return NO;
    }
    
    if (!_currentRole.isTrickNoDistanceLimitation) {
        //判断触发条件(与目标距离必须是1)
        NSInteger position = abs((int)_currentRole.position - (int)_targetRole.position);
        
        //位置闭环
        if (position == [[RuleRoutine survivalRoles] count] - 1) {
            position = 1;
        }
        
        //自己是否有-1马
        if (_currentRole.equipment.attackHorse.range > 0) position -= _currentRole.equipment.attackHorse.range;
        
        //某角色是否有+1马
        if (_targetRole.equipment.defenseHorse.range > 0) position += _targetRole.equipment.defenseHorse.range;
        
        //强化兵粮寸断
        if (_currentRole.P_BLCD) position -= 1;
        
        if (position <= 0) {
            position = 1;
        }
        
        if (position != 1) {
            return NO;
        }
    }
    
    //判断触发条件(目标已有兵粮寸断等待判定)
    for (TrickCard *card in _targetRole.verdicts) {
        if (card.trickType == TrickCardType_BLCD) {
            return NO;
        }
    }
    
    return YES;
}

+ (BOOL)judgeThatWhether_WXKJ:(RoleDataSource *)_currentRole WithTarget:(RoleDataSource *)_targetRole
{
    //----判断技能----
    if (!_targetRole.T_WXKJ) {
        return NO;
    }
    
    return YES;
}

@end
