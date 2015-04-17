//
//  BaseCard.h
//  ThreeKingdomsPass
//
//  Created by 刘潋 on 15/4/17.
//  Copyright (c) 2015年 LiuLian. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    CardColorType_Spade = 0,     //黑桃(0)
    CardColorType_Heart,         //红桃(1)
    CardColorType_Club,          //梅花(2)
    CardColorType_Diamond        //方片(3)
}CardColorType;

typedef enum {
    BaseCardType_Base = 0,      //基本牌(0)
    BaseCardType_Trick,         //锦囊牌(1)
    BaseCardType_Weapon,        //武器(2)
    BaseCardType_Armor,         //防具(3)
    BaseCardType_DHorse,        //+1马(4)
    BaseCardType_AHorse         //-1马(5)
}BaseCardType;

@interface BaseCard : NSObject

@property (nonatomic ,strong) NSString *cardID;

@property (nonatomic, unsafe_unretained) BaseCardType cardType;

//点数
@property (nonatomic, unsafe_unretained) NSInteger count;

//花色
@property (nonatomic, unsafe_unretained) CardColorType colorType;

@end
