//
//  TFQObjectManager.h
//  DesignPattern
//
//  Created by 王立志 on 2018/7/10.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TFQPersons.h"
#import "TFQPersonState.h"

@interface TFQObjectManager : NSObject

- (void)addPerson:(TFQPersons *)person;
- (void)removePerson:(TFQPersons *)person;
- (void)display:(TFQPersonState *)state;

@end
