//
//  TFQNotification.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/3.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import "TFQNotification.h"

@implementation TFQNotification

- (instancetype)init{
    if(self == [super init]){
        self.notifications = [NSMutableArray arrayWithCapacity:2];
    }
    return self;
}

- (void)sendNotification{
    for(NSNotification *notification in self.notifications){
        [[NSNotificationCenter defaultCenter] postNotification:notification];
    }
}

@end
