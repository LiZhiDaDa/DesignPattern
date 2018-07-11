//
//  TFQGirlC.m
//  DesignPattern
//
//  Created by 王立志 on 2018/6/29.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import "TFQGirlC.h"

@implementation TFQGirlC

- (instancetype)initWithName:(NSString *)name{
    if(self == [super init]){
        self.name = name;
    }
    return self;
}

@end
