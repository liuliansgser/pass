//
//  WeaponCard.h
//  ThreeKingdomsPass
//
//  Created by 刘潋 on 15/4/16.
//  Copyright (c) 2015年 LiuLian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseCard.h"

typedef enum {
    WeaponCardType_ZGLN,    //诸葛连弩(0)
    WeaponCardType_QGJ,     //青釭剑(1)
    WeaponCardType_CXSGJ,   //雌雄双股剑(2)
    WeaponCardType_GDD,     //古锭刀(3)
    WeaponCardType_QLYYD,   //青龙偃月刀(4)
    WeaponCardType_ZBSM,    //丈八蛇矛(5)
    WeaponCardType_GSF,     //贯石斧(6)
    WeaponCardType_ZQYS,    //朱雀羽扇(7)
    WeaponCardType_FTHJ,    //方天画戟(8)
    WeaponCardType_QLG,     //麒麟弓(9)
}WeaponCardType;

@interface WeaponCard : BaseCard

//名称
@property (nonatomic, strong) NSString *title;

//武器距离
@property (nonatomic, unsafe_unretained) NSInteger range;

//武器特效
@property (nonatomic, strong) NSString *effects;

//类型
@property (nonatomic, unsafe_unretained) WeaponCardType weaponType;

@end
