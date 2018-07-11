//
//  TFQWork.h
//  DesignPattern
//
//  Created by 王立志 on 2018/7/4.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TFQState;

@interface TFQWork : NSObject

@property (nonatomic, assign)BOOL isWorkFinished;
@property (nonatomic, assign)int hour;
@property (nonatomic, strong)TFQState *state;

- (void)writeCode;

@end
