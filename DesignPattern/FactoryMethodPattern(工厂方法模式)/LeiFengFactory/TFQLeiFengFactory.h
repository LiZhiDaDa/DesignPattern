//
//  TFQLeiFengFactory.h
//  DesignPattern
//
//  Created by 王立志 on 2018/6/29.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TFQLeiFeng.h"

@interface TFQLeiFengFactory : NSObject

- (TFQLeiFeng *)createLeiFeng;

@end
