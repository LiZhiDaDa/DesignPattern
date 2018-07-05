//
//  TFQCompany.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/5.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import "TFQCompany.h"

@implementation TFQCompany

- (instancetype)initWithName:(NSString *)name{
    if(self == [super init]){
        self.name = name;
    }
    return self;
}
- (void)add:(TFQCompany *)company{}
- (void)remove:(TFQCompany *)company{}
///显示结构图  count:几级，从1开始依次往下，1代表总公司
- (void)displayCompanyWithCount:(int)count{}

@end
