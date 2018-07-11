//
//  TFQSleepState.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/4.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import "TFQSleepState.h"
#import "TFQWork.h"

@implementation TFQSleepState

- (void)writeCodeWithWork:(TFQWork *)work{
    NSLog(@"下班，睡觉");
}

@end
