//
//  DefenseHorseCard.h
//  ThreeKingdomsPass
//
//  Created by 刘潋 on 15/4/16.
//  Copyright (c) 2015年 LiuLian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseCard.h"

@interface DefenseHorseCard : BaseCard

//名称
@property (nonatomic, strong) NSString *title;

//距离
@property (nonatomic, unsafe_unretained) NSInteger range;

@end
