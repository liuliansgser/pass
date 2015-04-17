//
//  RoleDataEquipmentDataSource.h
//  ThreeKingdomsPass
//
//  Created by 刘潋 on 15/4/16.
//  Copyright (c) 2015年 LiuLian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeaponCard.h"
#import "ArmorCard.h"
#import "DefenseHorseCard.h"
#import "AttackHorseCard.h"

@interface RoleDataEquipmentDataSource : NSObject

//武器
@property (nonatomic, strong) WeaponCard *weapon;

//防具
@property (nonatomic, strong) ArmorCard *armor;

//+1马
@property (nonatomic, strong) DefenseHorseCard *defenseHorse;

//-1马
@property (nonatomic, strong) AttackHorseCard *attackHorse;

@end
