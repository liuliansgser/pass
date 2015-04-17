//
//  ArmorCard.h
//  ThreeKingdomsPass
//
//  Created by 刘潋 on 15/4/17.
//  Copyright (c) 2015年 LiuLian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseCard.h"

typedef enum {
    ArmorCardType_BGZ,     //八卦阵(0)
    ArmorCardType_RWD,     //仁王盾(1)
    ArmorCardType_TJ,      //藤甲(2)
    ArmorCardType_BYSZ,    //白银狮子(3)
}ArmorCardType;

@interface ArmorCard : BaseCard

//名称
@property (nonatomic, strong) NSString *title;

//防具特效
@property (nonatomic ,strong) NSString *effects;

//类型
@property (nonatomic, unsafe_unretained) ArmorCardType armorType;

@end
