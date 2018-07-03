//
//  TFQSuperTestPaper.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/2.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import "TFQSuperTestPaper.h"

@implementation TFQSuperTestPaper

- (void)questionA{
    NSLog(@"我是第一题 我有四个选项ABCD");
    [self answerA];
    NSLog(@"");
}

- (void)questionB{
    NSLog(@"我是第二题 我有四个选项ABCD");
    [self answerB];
    NSLog(@"");
}

- (void)questionC{
    NSLog(@"我是第三题 我有四个选项ABCD");
    [self answerC];
    NSLog(@"");
}

- (void)answerA{}
- (void)answerB{}
- (void)answerC{}
- (void)answerQuestion{
    [self questionA];
    [self questionB];
    [self questionC];
}

@end
