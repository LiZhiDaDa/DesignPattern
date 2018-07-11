//
//  TFQConcreteCompany.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/5.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import "TFQConcreteCompany.h"

@interface TFQConcreteCompany ()

@property (nonatomic, strong)NSMutableArray *companys;

@end

@implementation TFQConcreteCompany

- (instancetype)initWithName:(NSString *)name{
    if(self == [super initWithName:name]){
        self.companys = [NSMutableArray arrayWithCapacity:1];
    }
    return self;
}

- (void)add:(TFQCompany *)company{
    [self.companys addObject:company];
}
- (void)remove:(TFQCompany *)company{
    //这里直接删除肯定是有问题的，需要让代码更健壮
    [self.companys removeObject:company];
}
///显示结构图
- (void)displayCompanyWithCount:(int)count{
    NSLog(@"%d%@",count,self.name);
    for(TFQCompany *c in self.companys){
        [c displayCompanyWithCount:count+1];
    }
}

@end
