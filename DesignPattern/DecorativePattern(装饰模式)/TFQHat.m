//
//  TFQHat.m
//  DesignPattern
//
//  Created by 王立志 on 2018/6/28.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import "TFQHat.h"

@implementation TFQHat

- (instancetype)initWithPerson:(TFQPerson *)person{
    if(self == [super init]){
        self.person = person;
    }
    return self;
}

- (void)show{
    NSLog(@"帽子");
    [super show];
}

@end
