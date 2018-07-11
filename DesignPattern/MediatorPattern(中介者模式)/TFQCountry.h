//
//  TFQCountry.h
//  DesignPattern
//
//  Created by 王立志 on 2018/7/9.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TFQUnitedNations;

@interface TFQCountry : NSObject

@property (nonatomic, strong)NSString *name;
@property (nonatomic, strong)TFQUnitedNations *mediator;
- (instancetype)initWithMediator:(TFQUnitedNations *)mediator;
- (void)sendMessage:(NSString *)message;
- (void)getMessage:(NSString *)message;

@end
