//
//  TFQOperation.h
//  DesignPattern
//
//  Created by 王立志 on 2018/6/28.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TFQOperation : NSObject

@property (nonatomic, assign)int numA;
@property (nonatomic, assign)int numB;

- (float)getResult;

@end
