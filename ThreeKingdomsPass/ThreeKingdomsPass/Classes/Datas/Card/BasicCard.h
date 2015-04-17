//
//  BasicCard.h
//  ThreeKingdomsPass
//
//  Created by 刘潋 on 15/4/17.
//  Copyright (c) 2015年 LiuLian. All rights reserved.
//

#import "BaseCard.h"

typedef enum {
    BasicCardType_KILL = 0,   //殺(0)
    BasicCardType_FKILL,      //火殺(1)
    BasicCardType_EKILL,      //雷殺(2)
    BasicCardType_MISS,       //閃(3)
    BasicCardType_PEACH,      //桃(4)
    BasicCardType_WINE,       //酒(5)
}BasicCardType;

@interface BasicCard : BaseCard

//类型
@property (nonatomic, unsafe_unretained) BasicCardType basicType;

//名称
@property (nonatomic, strong) NSString *title;

//描述
@property (nonatomic, strong) NSString *Attribute;

@end
