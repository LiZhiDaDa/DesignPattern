//
//  TFQLeader1.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/9.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import "TFQLeader1.h"

@implementation TFQLeader1

- (void)handelRequest:(TFQRequest *)request{
    if([request.requestType isEqualToString:@"请假"] && request.requestCount <= 5){
        NSLog(@"%@,%@准了！",[self getLogWithRequest:request],self.name);
    }else{
        if(self.superior != nil){
            NSLog(@"%@,%@处理不了，给我领导处理",[self getLogWithRequest:request],self.name);
            [self.superior handelRequest:request];
            return;
        }
        NSLog(@"%@,%@说要求太过分，没人能处理",[self getLogWithRequest:request],self.name);
    }
}

@end
