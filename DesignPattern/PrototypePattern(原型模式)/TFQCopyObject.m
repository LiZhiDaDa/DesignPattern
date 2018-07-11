//
//  TFQCopyObject.m
//  DesignPattern
//
//  Created by 王立志 on 2018/6/29.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import "TFQCopyObject.h"

@implementation TFQCopyObject

- (id)copyWithZone:(NSZone *)zone{
    TFQCopyObject *copyObject = [[[self class] allocWithZone:zone] init];
    copyObject.name = self.name;
    copyObject.array = self.array;
    return copyObject;
}

@end
