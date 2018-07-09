//
//  TFQCountry.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/9.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import "TFQCountry.h"
#import "TFQUnitedNations.h"

@implementation TFQCountry

- (instancetype)initWithMediator:(TFQUnitedNations *)mediator{
    if (self == [super init]) {
        self.mediator = mediator;
    }
    return self;
}
- (void)sendMessage:(NSString *)message{
    [self.mediator sendMessage:message fromCountry:self];
}
- (void)getMessage:(NSString *)message{
    NSLog(@"%@接收到了对方的消息说:%@",self.name,message);
}
@end
