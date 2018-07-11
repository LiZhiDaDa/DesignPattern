//
//  TFQStraTegy.m
//  DesignPattern
//
//  Created by 王立志 on 2018/6/28.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import "TFQStraTegy.h"


@implementation TFQStraTegy

+ (void)getResultWithText:(NSString *)text{
    NSString *str = text;
    TFQOperation *operation;
    NSString *flag;
    if([str containsString:@"+"]){
        flag = @"+";
        operation = [[TFQAdd alloc] init];
    }else if([str containsString:@"-"]){
        flag = @"-";
        operation = [[TFQSubtract alloc] init];
    }else if([str containsString:@"*"]){
        flag = @"*";
        operation = [[TFQMultiply alloc] init];
    }else if([str containsString:@"/"]){
        flag = @"/";
        operation = [[TFQDivide alloc] init];
    }else{
        NSLog(@"输入错误");
        return;
    }
    int location = (int)[str rangeOfString:flag].location;
    operation.numA = [[str substringToIndex:location] intValue];
    operation.numB = [[str substringFromIndex:location+1] intValue];
    float result = [operation getResult];
    NSLog(@"%d%@%d = %.2f",operation.numA,flag,operation.numB,result);
}

@end
