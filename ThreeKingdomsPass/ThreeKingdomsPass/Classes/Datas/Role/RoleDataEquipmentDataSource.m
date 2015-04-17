//
//  RoleDataEquipmentDataSource.m
//  ThreeKingdomsPass
//
//  Created by 刘潋 on 15/4/16.
//  Copyright (c) 2015年 LiuLian. All rights reserved.
//

#import "RoleDataEquipmentDataSource.h"

@implementation RoleDataEquipmentDataSource

- (id)init {
    if (self = [super init]) {
        _weapon = [WeaponCard new];
        _armor = [ArmorCard new];
        _defenseHorse = [DefenseHorseCard new];
        _attackHorse = [AttackHorseCard new];
    }
    return self;
}

@end
