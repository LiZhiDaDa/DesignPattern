//
//  TFQPerson.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/10.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import "TFQPerson.h"
#import "TFQPersonState.h"

@implementation TFQPersons

- (instancetype)initWithName:(NSString *)name{
    if(self == [super init]){
        self.name = name;
    }
    return self;
}
- (void)accept:(TFQPersonState *)state{
}

@end
