//
//  RuleRoutine.h
//  ThreeKingdomsPass
//
//  Created by 刘潋 on 15/4/17.
//  Copyright (c) 2015年 LiuLian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RoleDataSource.h"
#import "BasicCard.h"
#import "TrickCard.h"
#import "WeaponCard.h"
#import "ArmorCard.h"

@interface RuleRoutine : NSObject

//判断手牌里有没有杀
+ (BOOL)judgeThatHandWhetherHasKillWithHands:(NSArray *)_hands;

//计算手牌里有几张杀
+ (NSInteger)calculationHandsKillCount:(NSArray *)_hands;

//判断手牌里有没有闪
+ (BOOL)judgeThatHandWhetherHasMissWithHands:(NSArray *)_hands;

//计算手牌里有几张闪
+ (NSInteger)calculationHandsMissCount:(NSArray *)_hands;

//判断手牌里有没有桃
+ (BOOL)judgeThatHandWhetherHasPeachWithHands:(NSArray *)_hands;

//计算手牌里有几张桃
+ (NSInteger)calculationHandsPeachCount:(NSArray *)_hands;

//判断手牌里有没有酒
+ (BOOL)judgeThatHandWhetherHasWineWithHands:(NSArray *)_hands;

//计算手牌里有几张酒
+ (NSInteger)calculationHandsWineCount:(NSArray *)_hands;

//判断手牌里有没有锦囊
+ (BOOL)judgeThatHandWhetherHasSkillWithHands:(NSArray *)_hands;

//判断手牌里有没有指定锦囊
+ (BOOL)judgeThatHandWhetherHasSkillWithHands:(NSArray *)_hands WithDesignatedType:(TrickCardType)_type;

//计算手牌里有几张指定锦囊
+ (NSInteger)calculationHandsSkillCount:(NSArray *)_hands WithDesignatedType:(TrickCardType)_type;

//判断手牌里有没有装备
+ (BOOL)judgeThatHandWhetherHasEquipmentWithHands:(NSArray *)_hands;

//判断手牌里有没有武器
+ (BOOL)judgeThatHandWhetherHasWeaponWithHands:(NSArray *)_hands;

//判断手牌里有没有防具
+ (BOOL)judgeThatHandWhetherHasArmorWithHands:(NSArray *)_hands;

//判断手牌里有没有马匹
+ (BOOL)judgeThatHandWhetherHasHorseWithHands:(NSArray *)_hands;

//判断手牌里有没有指定武器
+ (BOOL)judgeThatHandWhetherHasWeaponWithHands:(NSArray *)_hands WithDesignatedType:(WeaponCardType)_type;

//判断手牌里有没有指定防具
+ (BOOL)judgeThatHandWhetherHasArmorWithHands:(NSArray *)_hands WithDesignatedType:(ArmorCardType)_type;

//找一张指定牌
+ (BaseCard *)findCardWithCards:(NSArray *)_cards WithID:(NSString *)_cardID;

//计算与某角色攻击距离
+ (NSInteger)calculationRangeToAnotherRoleWithCurrentRole:(RoleDataSource *)_currentRole WithAnother:(RoleDataSource *)_anotherRole;

//判断一个目标能否攻击到另一个目标
+ (BOOL)judgeThatCurrentRole:(RoleDataSource *)_currentRole AttackAnother:(RoleDataSource *)_anotherRole;

//判断某角色是否死亡
+ (BOOL)judgeThatRoleWhetherDead:(RoleDataSource *)_role;

//重置角色距离(每次有角色死亡后执行)
+ (void)resetSurvivalRolesRange:(NSArray *)_survivalRoles;

//角色血量
+ (NSInteger)roleLifeValue:(RoleDataSource *)_role;

//角色血量上限
+ (NSInteger)roleLifeValueLimit:(RoleDataSource *)_role;

//存活角色
+ (NSArray *)survivalRoles;

//存活角色(除自己)
+ (NSArray *)survivalRolesGivenByOwn:(RoleDataSource *)_role;

//判断目标有无手牌
+ (BOOL)judgeThatTargetHasCards:(RoleDataSource *)_targetRole;

//判断目标有无装备区
+ (BOOL)judgeThatTargetHasEquipment:(RoleDataSource *)_targetRole;

//判断目标有无武器
+ (BOOL)judgeThatTargetHasWeapon:(RoleDataSource *)_targetRole;

//判断目标有无判定牌
+ (BOOL)judgeThatTargetHasVerdicts:(RoleDataSource *)_targetRole;

@end
