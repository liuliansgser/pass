//
//  TrickCard.h
//  ThreeKingdomsPass
//
//  Created by 刘潋 on 15/4/17.
//  Copyright (c) 2015年 LiuLian. All rights reserved.
//

#import "BaseCard.h"

typedef enum {
    TrickCardType_WZSY,    //無中生有(0)
    TrickCardType_SSQY,    //順手牽羊(1)
    TrickCardType_GHCQ,    //過河拆橋(2)
    TrickCardType_JD,      //決鬥(3)
    TrickCardType_JDSR,    //借刀殺人(4)
    TrickCardType_TSLH,    //鐵鎖連環(5)
    TrickCardType_TYJY,    //桃園結義(6)
    TrickCardType_NMRQ,    //南蠻入侵(7)
    TrickCardType_WJQF,    //萬箭齊發(8)
    TrickCardType_WGFD,    //五穀豐登(9)
    TrickCardType_HG,      //火攻(10)
    TrickCardType_WXKJ,    //无懈可击(11)
    
    TrickCardType_LBSS,    //樂不思蜀(12)
    TrickCardType_SD,      //閃電(13)
    TrickCardType_BLCD     //兵糧寸斷(14)
}TrickCardType;

@interface TrickCard : BaseCard

//是否为延时锦囊
@property (nonatomic, unsafe_unretained) BOOL isDelay;

//类型
@property (nonatomic, unsafe_unretained) TrickCardType trickType;

//名称
@property (nonatomic, strong) NSString *title;

//描述
@property (nonatomic, strong) NSString *Attribute;

@end
