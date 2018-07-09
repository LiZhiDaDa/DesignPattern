//
//  TFQCommand.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/9.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import "TFQCommand.h"

@implementation TFQCommand

- (instancetype)initWithCooke:(TFQCook *)cook{
    if (self == [super init]) {
        self.cook = cook;
    }
    return self;
}
- (void)executeCommand{}

@end
