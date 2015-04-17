//
//  ViewController.m
//  ThreeKingdomsPass
//
//  Created by 刘潋 on 15/4/16.
//  Copyright (c) 2015年 LiuLian. All rights reserved.
//

#import "ViewController.h"
#import "TrickRuleRoutine.h"
#import "RoleDataSource.h"
#import "WeaponCard.h"
#import "DefenseHorseCard.h"
#import "AttackHorseCard.h"
#import "GameDataSource.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //攻击距离测试demo
    WeaponCard *weapon = [WeaponCard new];
    weapon.title = @"雌雄双股剑";
    weapon.range = 5;
    
    DefenseHorseCard *defenseHorse = [DefenseHorseCard new];
    defenseHorse.range = 1;
    
    AttackHorseCard *attackHorse = [AttackHorseCard new];
    attackHorse.range = 0;
    
    RoleDataSource *current = [RoleDataSource new];
    current.roleID = @"A";
    current.equipment.weapon = weapon;
    current.equipment.attackHorse = attackHorse;
    
    RoleDataSource *another_1 = [RoleDataSource new];
    another_1.roleID = @"B";
    another_1.equipment.defenseHorse = defenseHorse;
    
    RoleDataSource *another_2 = [RoleDataSource new];
    another_2.roleID = @"C";
    another_2.equipment.defenseHorse = defenseHorse;
    another_2.equipment.weapon = weapon;
    
    RoleDataSource *another_3 = [RoleDataSource new];
    another_3.roleID = @"D";
    another_3.equipment.defenseHorse = defenseHorse;
    
    [GAME.survivalRoles addObject:current];
    [GAME.survivalRoles addObject:another_1];
    [GAME.survivalRoles addObject:another_2];
    [GAME.survivalRoles addObject:another_3];
    
    [RuleRoutine resetSurvivalRolesRange:GAME.survivalRoles];
    
    /*
    //攻击距离测试
    NSInteger range_1 = [RuleRoutine calculationRangeToAnotherRoleWithCurrentRole:current WithAnother:another_1];
    NSInteger range_2 = [RuleRoutine calculationRangeToAnotherRoleWithCurrentRole:current WithAnother:another_2];
    NSInteger range_3 = [RuleRoutine calculationRangeToAnotherRoleWithCurrentRole:current WithAnother:another_3];
    
    NSLog(@"与位置1距离为:%ld\n与位置2距离为:%ld\n与位置3距离为:%ld\n",(long)range_1,(long)range_2,(long)range_3);

    //借刀杀人测试
    if ([TrickRuleRoutine judgeThatWhether_JIEDAOSHAREN:current WithTarget:another_2]) {
        NSLog(@"可以使用");
    }
    else {
        NSLog(@"不能使用");
    }
    */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
