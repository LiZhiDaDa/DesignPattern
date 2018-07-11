//
//  TFQShoes.m
//  DesignPattern
//
//  Created by 王立志 on 2018/6/28.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import "TFQShoes.h"

@implementation TFQShoes

- (instancetype)initWithPerson:(TFQPerson *)person{
    if(self == [super init]){
        self.person = person;
    }
    return self;
}
- (void)show{
    NSLog(@"运动鞋");
    [super show];
}

@end
