//
//  TFQPersonState.h
//  DesignPattern
//
//  Created by 王立志 on 2018/7/10.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TFQPersons.h"

@interface TFQPersonState : NSObject

@property (nonatomic, strong)NSString *name;
- (void)outPutWithPersonMan:(TFQPersons *)person;
- (void)outPutWithPersonWoman:(TFQPersons *)person;

@end
