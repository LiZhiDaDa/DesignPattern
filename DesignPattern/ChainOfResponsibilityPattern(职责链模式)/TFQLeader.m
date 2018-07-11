//
//  TFQLeader.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/9.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import "TFQLeader.h"

@implementation TFQLeader

- (instancetype)initWithName:(NSString *)name{
    if(self == [super init]){
        self.name = name;
    }
    return self;
}

- (void)handelRequest:(TFQRequest *)request{}

- (NSString *)getLogWithRequest:(TFQRequest *)request{
    NSString *str = [NSString stringWithFormat:@"%@%@%d",request.requestName,request.requestType,request.requestCount];
    return str;
}
@end
