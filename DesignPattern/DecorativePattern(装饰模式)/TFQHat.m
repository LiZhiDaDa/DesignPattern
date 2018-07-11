//
//  TFQHat.m
//  DesignPattern
//
//  Created by 王立志 on 2018/6/28.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import "TFQHat.h"

@implementation TFQHat

- (instancetype)initWithPerson:(TFQPerson *)person{
    if(self == [super init]){
        self.person = person;
    }
    return self;
}

- (void)show{
    NSLog(@"帽子");
    [super show];
}

@end
