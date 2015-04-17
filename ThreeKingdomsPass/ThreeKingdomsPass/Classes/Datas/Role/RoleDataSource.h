//
//  RoleDataSource.h
//  ThreeKingdomsPass
//
//  Created by 刘潋 on 15/4/16.
//  Copyright (c) 2015年 LiuLian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RoleDataEquipmentDataSource.h"

@interface RoleDataSource : NSObject

//ID
@property (nonatomic, strong) NSString *roleID;

//位置坐标
@property (nonatomic, unsafe_unretained) NSInteger position;

//是否死亡
@property (nonatomic, unsafe_unretained) BOOL isDead;

//勾玉上限
@property (nonatomic, unsafe_unretained) NSInteger lifelimit;

//勾玉值
@property (nonatomic, unsafe_unretained) NSInteger life;

//----手牌区----
//手牌
@property (nonatomic, strong) NSMutableArray *cards;

//能否成为杀的目标(default is YES)
@property (nonatomic, unsafe_unretained) BOOL T_KILL;

//能否使用杀(default is YES)
@property (nonatomic, unsafe_unretained) BOOL U_KILL;

//----装备区----
@property (nonatomic, strong) RoleDataEquipmentDataSource *equipment;

//----判定区----
@property (nonatomic, strong) NSMutableArray *verdicts;

//----技能区----
//能否被顺手牵羊(default is YES)
@property (nonatomic, unsafe_unretained) BOOL T_SSQY;

//锦囊无距离限制(default is NO)
@property (nonatomic, unsafe_unretained) BOOL isTrickNoDistanceLimitation;

//能否被过河拆桥(default is YES)
@property (nonatomic, unsafe_unretained) BOOL T_GHCQ;

//能否被决斗(default is YES)
@property (nonatomic, unsafe_unretained) BOOL T_JD;

//能否被借刀杀人(default is YES)
@property (nonatomic, unsafe_unretained) BOOL T_JDSR;

//能否被铁索连环(default is YES)
@property (nonatomic, unsafe_unretained) BOOL T_TSLH;

//能否被南蛮入侵(default is YES)
@property (nonatomic, unsafe_unretained) BOOL T_NMRQ;

//能否被万箭齐发(default is YES)
@property (nonatomic, unsafe_unretained) BOOL T_WJQF;

//能否被火攻(default is YES)
@property (nonatomic, unsafe_unretained) BOOL T_HG;

//能否被乐不思蜀(default is YES)
@property (nonatomic, unsafe_unretained) BOOL T_LBSS;

//能否被闪电(default is YES)
@property (nonatomic, unsafe_unretained) BOOL T_SD;

//能否被兵粮寸断(default is YES)
@property (nonatomic, unsafe_unretained) BOOL T_BLCD;

//能否被无懈可击(default is YES)
@property (nonatomic, unsafe_unretained) BOOL T_WXKJ;

//强化兵粮寸断(default is NO)
@property (nonatomic, unsafe_unretained) BOOL P_BLCD;


@end
