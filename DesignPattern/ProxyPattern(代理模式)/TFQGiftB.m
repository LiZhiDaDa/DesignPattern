//
//  TFQGiftB.m
//  DesignPattern
//
//  Created by 王立志 on 2018/6/29.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import "TFQGiftB.h"

@interface TFQGiftB ()

@property (nonatomic, strong)TFQGiftA *giftA;

@end

@implementation TFQGiftB

- (instancetype)initWithGirl:(TFQGirlC *)girl{
    if(self == [super init]){
        //这里没创建完成之前是没有setGiftA方法的，所以不能self.giftA要用_giftA
        self.giftA = [[TFQGiftA alloc] initWithGirl:girl andSelfName:@"追求者" andDelegateName:@"中间人"];
    }
    return self;
}

- (void)sendFlower{
    [self.giftA sendFlower];
}
- (void)sendChocolate{
    [self.giftA sendChocolate];
}

@end
