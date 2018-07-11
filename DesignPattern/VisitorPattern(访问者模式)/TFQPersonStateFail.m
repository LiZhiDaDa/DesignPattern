//
//  TFQPersonStateFail.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/10.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import "TFQPersonStateFail.h"

@implementation TFQPersonStateFail

- (void)outPutWithPersonMan:(TFQPersons *)person{
    NSLog(@"%@%@时，背后有一个败家的女人",person.name,self.name);
}
- (void)outPutWithPersonWoman:(TFQPersons *)person{
    NSLog(@"%@%@时，背后有一个败家的男人",person.name,self.name);
}

@end
