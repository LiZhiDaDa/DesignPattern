//
//  TFQPersonStateSuccess.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/10.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import "TFQPersonStateSuccess.h"

@implementation TFQPersonStateSuccess

- (void)outPutWithPerson:(TFQPersons *)person{
    NSLog(@"%@%@时，",person.name,self.name);
}
- (void)outPutWithPersonMan:(TFQPersons *)person{
    NSLog(@"%@%@时，背后有一个懂事儿的女人",person.name,self.name);
}
- (void)outPutWithPersonWoman:(TFQPersons *)person{
    NSLog(@"%@%@时，背后有一个不懂事儿的男人",person.name,self.name);
}

@end
