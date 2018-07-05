//
//  TFQEveningState.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/4.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import "TFQEveningState.h"
#import "TFQWork.h"
#import "TFQSleepState.h"

@implementation TFQEveningState

- (void)writeCodeWithWork:(TFQWork *)work{
    if(work.hour <= 12){
        NSLog(@"21点之前，工作");
    }else{
        work.state = [[TFQSleepState alloc] init];
        [work writeCode];
    }
}

@end
