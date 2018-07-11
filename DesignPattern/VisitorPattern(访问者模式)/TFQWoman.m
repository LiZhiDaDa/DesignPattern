//
//  TFQWoman.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/10.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import "TFQWoman.h"
#import "TFQPersonState.h"

@implementation TFQWoman

- (void)accept:(TFQPersonState *)state{
    [state outPutWithPersonWoman:self];
}

@end
