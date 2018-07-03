//
//  TFQShoes.m
//  DesignPattern
//
//  Created by 王立志 on 2018/6/28.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import "TFQShoes.h"

@implementation TFQShoes

- (instancetype)initWithPerson:(TFQPerson *)person{
    if(self == [super init]){
        self.person = person;
    }
    return self;
}
- (void)show{
    NSLog(@"运动鞋");
    [super show];
}

@end
