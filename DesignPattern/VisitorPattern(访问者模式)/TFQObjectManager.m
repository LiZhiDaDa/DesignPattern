//
//  TFQObjectManager.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/10.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import "TFQObjectManager.h"

@interface TFQObjectManager ()

@property (nonatomic, strong)NSMutableArray *array;

@end

@implementation TFQObjectManager

- (instancetype)init{
    if(self == [super init]){
        self.array = [NSMutableArray arrayWithCapacity:2];
    }
    return self;
}
- (void)addPerson:(TFQPersons *)person{
    [self.array addObject:person];
}
- (void)removePerson:(TFQPersons *)person{
    [self.array removeObject:person];
}
- (void)display:(TFQPersonState *)state{
    [self.array enumerateObjectsUsingBlock:^(TFQPersons *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj accept:state];
    }];
}

@end
