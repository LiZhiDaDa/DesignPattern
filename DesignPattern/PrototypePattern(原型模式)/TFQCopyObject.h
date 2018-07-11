//
//  TFQCopyObject.h
//  DesignPattern
//
//  Created by 王立志 on 2018/6/29.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TFQCopyObject : NSObject <NSCopying>

@property (nonatomic, copy)NSString *name;
@property (nonatomic, copy)NSArray *array;

@end
