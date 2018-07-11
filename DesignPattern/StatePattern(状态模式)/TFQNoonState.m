//
//  TFQNoonState.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/4.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import "TFQNoonState.h"
#import "TFQWork.h"
#import "TFQAfternoonState.h"

@implementation TFQNoonState

- (void)writeCodeWithWork:(TFQWork *)work{
    if(work.hour <= 13){
        NSLog(@"1点之前，吃饭休息");
    }else{
        work.state = [[TFQAfternoonState alloc] init];
        [work writeCode];
    }
}

@end
