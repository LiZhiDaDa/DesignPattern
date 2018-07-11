//
//  TFQPerson.m
//  DesignPattern
//
//  Created by 王立志 on 2018/6/28.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import "TFQPerson.h"

@implementation TFQPerson

- (instancetype)initWithName:(NSString *)name{
    if(self == [super init]){
        self.name = name;
    }
    return self;
}

- (void)show{
    NSLog(@"装扮的%@",self.name);
}

@end
