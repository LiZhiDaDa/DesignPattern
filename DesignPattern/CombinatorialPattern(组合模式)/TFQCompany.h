//
//  TFQCompany.h
//  DesignPattern
//
//  Created by 王立志 on 2018/7/5.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TFQCompany : NSObject

@property (nonatomic, copy)NSString *name;
- (instancetype)initWithName:(NSString *)name;
- (void)add:(TFQCompany *)company;
- (void)remove:(TFQCompany *)company;
///显示结构图  count:几级，从1开始依次往下，1代表总公司
- (void)displayCompanyWithCount:(int)count;

@end
