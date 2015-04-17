//
//  RuleRoutine.m
//  ThreeKingdomsPass
//
//  Created by 刘潋 on 15/4/17.
//  Copyright (c) 2015年 LiuLian. All rights reserved.
//

#import "RuleRoutine.h"
#import "GameDataSource.h"
#import "Globle.h"
#import "BasicCard.h"
#import "DefenseHorseCard.h"
#import "AttackHorseCard.h"

@implementation RuleRoutine

//判断手牌里有没有杀
+ (BOOL)judgeThatHandWhetherHasKillWithHands:(NSArray *)_hands
{
    for (BaseCard *card in _hands) {
        if (card.cardType == BaseCardType_Base && [card isKindOfClass:[BasicCard class]]) {
            BasicCard *basicCard = (BasicCard *)card;
            if (basicCard.basicType == BasicCardType_KILL ||
                basicCard.basicType == BasicCardType_FKILL ||
                basicCard.basicType == BasicCardType_EKILL) {
                return YES;
            }
        }
    }
    return NO;
}

//计算手牌里有几张杀
+ (NSInteger)calculationHandsKillCount:(NSArray *)_hands
{
    NSInteger count = 0;
    for (BaseCard *card in _hands) {
        if (card.cardType == BaseCardType_Base && [card isKindOfClass:[BasicCard class]]) {
            BasicCard *basicCard = (BasicCard *)card;
            if (basicCard.basicType == BasicCardType_KILL ||
                basicCard.basicType == BasicCardType_FKILL ||
                basicCard.basicType == BasicCardType_EKILL) {
                count++;
            }
        }
    }
    return count;
}

//判断手牌里有没有闪
+ (BOOL)judgeThatHandWhetherHasMissWithHands:(NSArray *)_hands
{
    for (BaseCard *card in _hands) {
        if (card.cardType == BaseCardType_Base && [card isKindOfClass:[BasicCard class]]) {
            BasicCard *basicCard = (BasicCard *)card;
            if (basicCard.basicType == BasicCardType_MISS) {
                return YES;
            }
        }
    }
    return NO;
}

//计算手牌里有几张闪
+ (NSInteger)calculationHandsMissCount:(NSArray *)_hands
{
    NSInteger count = 0;
    for (BaseCard *card in _hands) {
        if (card.cardType == BaseCardType_Base && [card isKindOfClass:[BasicCard class]]) {
            BasicCard *basicCard = (BasicCard *)card;
            if (basicCard.basicType == BasicCardType_MISS) {
                count++;
            }
        }
    }
    return count;
}

//判断手牌里有没有桃
+ (BOOL)judgeThatHandWhetherHasPeachWithHands:(NSArray *)_hands
{
    for (BaseCard *card in _hands) {
        if (card.cardType == BaseCardType_Base && [card isKindOfClass:[BasicCard class]]) {
            BasicCard *basicCard = (BasicCard *)card;
            if (basicCard.basicType == BasicCardType_PEACH) {
                return YES;
            }
        }
    }
    return NO;
}

//计算手牌里有几张桃
+ (NSInteger)calculationHandsPeachCount:(NSArray *)_hands
{
    NSInteger count = 0;
    for (BaseCard *card in _hands) {
        if (card.cardType == BaseCardType_Base && [card isKindOfClass:[BasicCard class]]) {
            BasicCard *basicCard = (BasicCard *)card;
            if (basicCard.basicType == BasicCardType_PEACH) {
                count++;
            }
        }
    }
    return count;
}

//判断手牌里有没有酒
+ (BOOL)judgeThatHandWhetherHasWineWithHands:(NSArray *)_hands
{
    for (BaseCard *card in _hands) {
        if (card.cardType == BaseCardType_Base && [card isKindOfClass:[BasicCard class]]) {
            BasicCard *basicCard = (BasicCard *)card;
            if (basicCard.basicType == BasicCardType_WINE) {
                return YES;
            }
        }
    }
    return NO;
}

//计算手牌里有几张酒
+ (NSInteger)calculationHandsWineCount:(NSArray *)_hands
{
    NSInteger count = 0;
    for (BaseCard *card in _hands) {
        if (card.cardType == BaseCardType_Base && [card isKindOfClass:[BasicCard class]]) {
            BasicCard *basicCard = (BasicCard *)card;
            if (basicCard.basicType == BasicCardType_WINE) {
                count++;
            }
        }
    }
    return count;
}

//判断手牌里有没有锦囊
+ (BOOL)judgeThatHandWhetherHasSkillWithHands:(NSArray *)_hands
{
    for (BaseCard *card in _hands) {
        if (card.cardType == BaseCardType_Trick && [card isKindOfClass:[TrickCard class]]) {
            return YES;
        }
    }
    return NO;
}

//判断手牌里有没有指定锦囊
+ (BOOL)judgeThatHandWhetherHasSkillWithHands:(NSArray *)_hands WithDesignatedType:(TrickCardType)_type
{
    for (BaseCard *card in _hands) {
        if (card.cardType == BaseCardType_Trick && [card isKindOfClass:[TrickCard class]]) {
            TrickCard *trickCard = (TrickCard *)card;
            if (trickCard.trickType == _type) {
                return YES;
            }
        }
    }
    return NO;
}

//计算手牌里有几张指定锦囊
+ (NSInteger)calculationHandsSkillCount:(NSArray *)_hands WithDesignatedType:(TrickCardType)_type
{
    NSInteger count = 0;
    for (BaseCard *card in _hands) {
        if (card.cardType == BaseCardType_Trick && [card isKindOfClass:[TrickCard class]]) {
            TrickCard *trickCard = (TrickCard *)card;
            if (trickCard.trickType == _type) {
                count++;
            }
        }
    }
    return count;
}

//判断手牌里有没有装备
+ (BOOL)judgeThatHandWhetherHasEquipmentWithHands:(NSArray *)_hands
{
    for (BaseCard *card in _hands) {
        if ((card.cardType == BaseCardType_Weapon && [card isKindOfClass:[WeaponCard class]]) ||
            (card.cardType == BaseCardType_Armor && [card isKindOfClass:[ArmorCard class]]) ||
            (card.cardType == BaseCardType_DHorse && [card isKindOfClass:[DefenseHorseCard class]]) ||
            (card.cardType == BaseCardType_AHorse && [card isKindOfClass:[AttackHorseCard class]])) {
            return YES;
        }
    }
    return NO;
}

//判断手牌里有没有武器
+ (BOOL)judgeThatHandWhetherHasWeaponWithHands:(NSArray *)_hands
{
    for (BaseCard *card in _hands) {
        if (card.cardType == BaseCardType_Weapon && [card isKindOfClass:[WeaponCard class]]) {
            return YES;
        }
    }
    return NO;
}

//判断手牌里有没有防具
+ (BOOL)judgeThatHandWhetherHasArmorWithHands:(NSArray *)_hands
{
    for (BaseCard *card in _hands) {
        if (card.cardType == BaseCardType_Armor && [card isKindOfClass:[ArmorCard class]]) {
            return YES;
        }
    }
    return NO;
}

//判断手牌里有没有马匹
+ (BOOL)judgeThatHandWhetherHasHorseWithHands:(NSArray *)_hands
{
    for (BaseCard *card in _hands) {
        if ((card.cardType == BaseCardType_DHorse && [card isKindOfClass:[DefenseHorseCard class]]) ||
            (card.cardType == BaseCardType_AHorse && [card isKindOfClass:[AttackHorseCard class]])) {
            return YES;
        }
    }
    return NO;
}

//判断手牌里有没有指定武器
+ (BOOL)judgeThatHandWhetherHasWeaponWithHands:(NSArray *)_hands WithDesignatedType:(WeaponCardType)_type
{
    for (BaseCard *card in _hands) {
        if (card.cardType == BaseCardType_Weapon && [card isKindOfClass:[WeaponCard class]]) {
            WeaponCard *weaponCard = (WeaponCard *)card;
            if (weaponCard.weaponType == _type) {
                return YES;
            }
        }
    }
    return NO;
}

//判断手牌里有没有指定防具
+ (BOOL)judgeThatHandWhetherHasArmorWithHands:(NSArray *)_hands WithDesignatedType:(ArmorCardType)_type
{
    for (BaseCard *card in _hands) {
        if (card.cardType == BaseCardType_Armor && [card isKindOfClass:[ArmorCard class]]) {
            ArmorCard *armorCard = (ArmorCard *)card;
            if (armorCard.armorType == _type) {
                return YES;
            }
        }
    }
    return NO;
}

//找一张指定牌
+ (BaseCard *)findCardWithCards:(NSArray *)_cards WithID:(NSString *)_cardID
{
    for (BaseCard *card in _cards) {
        if ([card.cardID isEqualToString:_cardID]) {
            return card;
        }
    }
    return nil;
}

//计算与某角色距离
+ (NSInteger)calculationRangeToAnotherRoleWithCurrentRole:(RoleDataSource *)_currentRole WithAnother:(RoleDataSource *)_anotherRole
{
    NSInteger position = abs((int)_currentRole.position - (int)_anotherRole.position);
    
    //位置闭环
    if (position == [[RuleRoutine survivalRoles] count] - 1) {
        position = 1;
    }
    
    //自己是否有-1马
    if (_currentRole.equipment.attackHorse.range > 0) position -= _currentRole.equipment.attackHorse.range;
    
    //某角色是否有+1马
    if (_anotherRole.equipment.defenseHorse.range > 0) position += _anotherRole.equipment.defenseHorse.range;
    
    //自己的武器距离
    NSInteger range = _currentRole.equipment.weapon.range - 1;
    if (range > 0) {
        position -= range;
    }
    
    if (position <= 0) {
        position = 1;
    }
    
    return position;
}

+ (BOOL)judgeThatCurrentRole:(RoleDataSource *)_currentRole AttackAnother:(RoleDataSource *)_anotherRole
{
    if ([RuleRoutine calculationRangeToAnotherRoleWithCurrentRole:_currentRole WithAnother:_anotherRole] == 1) {
        //NSLog(@"%@可以攻击到%@",_currentRole.roleID,_anotherRole.roleID);
        return YES;
    }
    else {
        //NSLog(@"%@不能攻击到%@",_currentRole.roleID,_anotherRole.roleID);
        return NO;
    }
}

//判断某角色是否死亡
+ (BOOL)judgeThatRoleWhetherDead:(RoleDataSource *)_role
{
    return _role.isDead;
}

//重置角色距离
+ (void)resetSurvivalRolesRange:(NSArray *)_survivalRoles
{
    for (NSInteger i = 0; i < [_survivalRoles count]; i++) {
        RoleDataSource *role = [_survivalRoles objectAtIndex:i];
        role.position = i;
    }
}

//角色血量
+ (NSInteger)roleLifeValue:(RoleDataSource *)_role
{
    return _role.life;
}

//角色血量上限
+ (NSInteger)roleLifeValueLimit:(RoleDataSource *)_role
{
    return _role.lifelimit;
}

//存活角色
+ (NSArray *)survivalRoles
{
    return GAME.survivalRoles;
}

//存活角色(除自己)
+ (NSArray *)survivalRolesGivenByOwn:(RoleDataSource *)_own
{
    NSMutableArray *array = [NSMutableArray new];
    for (RoleDataSource *role in [RuleRoutine survivalRoles]) {
        if (![role.roleID isEqualToString:_own.roleID]) {
            [array addObject:role];
        }
    }
    return array;
}

//判断目标有无手牌
+ (BOOL)judgeThatTargetHasCards:(RoleDataSource *)_targetRole
{
    return [_targetRole.cards count] > 0;
}

//判断目标有无装备区
+ (BOOL)judgeThatTargetHasEquipment:(RoleDataSource *)_targetRole
{
    return (_isStringNotNull(_targetRole.equipment.weapon.title))||(_isStringNotNull(_targetRole.equipment.armor.title))||(_isStringNotNull(_targetRole.equipment.defenseHorse.title))||(_isStringNotNull(_targetRole.equipment.attackHorse.title));
}

//判断目标有无武器
+ (BOOL)judgeThatTargetHasWeapon:(RoleDataSource *)_targetRole
{
    return _isStringNotNull(_targetRole.equipment.weapon.title);
}

//判断目标有无判定牌
+ (BOOL)judgeThatTargetHasVerdicts:(RoleDataSource *)_targetRole
{
    return [_targetRole.verdicts count] > 0;
}

@end
