//
//  TFQPhone.h
//  DesignPattern
//
//  Created by 王立志 on 2018/7/9.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TFQPhoneGame;

@interface TFQPhone : NSObject

- (void)setPhoneGame:(TFQPhoneGame *)game;
- (void)run;

@end
