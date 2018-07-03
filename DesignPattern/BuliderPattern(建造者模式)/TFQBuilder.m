//
//  TFQBuilder.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/2.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import "TFQBuilder.h"

@implementation TFQBuilder

- (void)build1{
    NSLog(@"没有实现方法build1");
}
- (void)build2{
    NSLog(@"没有实现方法build2");
}
- (void)build3{
    NSLog(@"没有实现方法build3");
}
- (void)build4{
    NSLog(@"没有实现方法build4");
}
- (void)beginBuild{
    [self build1];
    [self build2];
    [self build3];
    [self build4];
}

@end
