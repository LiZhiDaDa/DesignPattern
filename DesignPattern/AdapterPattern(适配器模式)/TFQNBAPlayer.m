//
//  TFQNBAPlayer.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/5.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import "TFQNBAPlayer.h"

@implementation TFQNBAPlayer

- (instancetype)initWithName:(NSString *)name{
    if(self == [super init]){
        self.name = name;
    }
    return self;
}
- (void)attack{
    NSLog(@"%@ 进攻",self.name);
}
- (void)defense{
    NSLog(@"%@ 防守",self.name);
}

@end
