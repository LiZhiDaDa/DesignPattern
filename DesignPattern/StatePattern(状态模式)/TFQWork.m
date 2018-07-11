
//
//  TFQWork.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/4.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import "TFQWork.h"
#import "TFQState.h"
#import "TFQMorningState.h"

@implementation TFQWork

- (instancetype)init{
    if(self == [super init]){
        //设置初始值，肯定时间要从早到晚循环。
        self.state = [[TFQMorningState alloc] init];
    }
    return self;
}

- (void)writeCode{
    [self.state writeCodeWithWork:self];
}

@end
