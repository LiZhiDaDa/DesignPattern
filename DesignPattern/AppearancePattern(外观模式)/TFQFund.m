//
//  TFQFund.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/2.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import "TFQFund.h"

@interface TFQFund ()

@property (nonatomic, strong)TFQFirstFund *first;
@property (nonatomic, strong)TFQSecondFund *second;

@end

@implementation TFQFund

- (instancetype)init{
    if(self == [super init]){
        self.first = [[TFQFirstFund alloc] init];
        self.second = [[TFQSecondFund alloc] init];
    }
    return self;
}

- (void)buy{
    [self.first buy];
    [self.second buy];
}

- (void)sell{
    [self.first sell];
    [self.second sell];
}

@end
