//
//  TFQPhone.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/9.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import "TFQPhone.h"
#import "TFQPhoneGame.h"

@interface TFQPhone ()

@property (nonatomic, strong)TFQPhoneGame *game;

@end

@implementation TFQPhone

- (void)setPhoneGame:(TFQPhoneGame *)game{
    self.game = game;
}
- (void)run{
    [self.game run];
}

@end
