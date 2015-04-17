//
//  Globle.h
//  ThreeKingdomsPass
//
//  Created by 刘潋 on 15/4/17.
//  Copyright (c) 2015年 LiuLian. All rights reserved.
//

#import <Foundation/Foundation.h>

#define GLOBLE [Globle shareInstance]

#define _isStringNULL(a) (!a || [a length] == 0 || [[[a description] uppercaseString] isEqualToString:@"(NULL)"] || ![a isKindOfClass:[NSString class]] || [[[a description] uppercaseString] isEqualToString:@"NULL"])

#define _isStringNotNull(a) (a && [a isKindOfClass:[NSString class]] && [a length] && ![[[a description] uppercaseString] isEqualToString:@"(NULL)"] && ![[[a description] uppercaseString] isEqualToString:@"NULL"])

@interface Globle : NSObject

//单例模式
+ (Globle *)shareInstance;

@end
