//
//  TFQMoneyDepartment.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/5.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import "TFQMoneyDepartment.h"

@implementation TFQMoneyDepartment

- (void)add:(TFQCompany *)company{}
- (void)remove:(TFQCompany *)company{}
///显示结构图
- (void)displayCompanyWithCount:(int)count{
    NSLog(@"%d%@",count,self.name);
}

@end
