//
//  TFQPerson.h
//  DesignPattern
//
//  Created by 王立志 on 2018/7/10.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TFQPersonState;

@interface TFQPersons : NSObject

@property (nonatomic, strong)NSString *name;
///接受不同的状态
- (void)accept:(TFQPersonState *)state;
- (instancetype)initWithName:(NSString *)name;

@end
