//
//  TFQGiftA.m
//  DesignPattern
//
//  Created by 王立志 on 2018/6/29.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import "TFQGiftA.h"

@interface TFQGiftA ()

@property (nonatomic, strong)TFQGirlC *girl;
@property (nonatomic, copy)NSString *selfName;
@property (nonatomic, copy)NSString *delegateName;

@end

@implementation TFQGiftA

- (instancetype)initWithGirl:(TFQGirlC *)girl andSelfName:(NSString *)selfName andDelegateName:(NSString *)delegateName{
    if(self == [super init]){
        self.girl = girl;
        self.selfName = selfName;
        self.delegateName = delegateName;
    }
    return self;
}

- (void)sendFlower{
    NSLog(@"%@拜托%@给%@送花",self.selfName,self.delegateName,self.girl.name);
}
- (void)sendChocolate{
    NSLog(@"%@拜托%@给%@送巧克力",self.selfName,self.delegateName,self.girl.name);
}

@end
