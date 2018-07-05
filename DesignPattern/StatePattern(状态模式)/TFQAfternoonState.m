//
//  TFQAfternoonState.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/4.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import "TFQAfternoonState.h"
#import "TFQWork.h"
#import "TFQEveningState.h"

@implementation TFQAfternoonState

- (void)writeCodeWithWork:(TFQWork *)work{
    if(work.hour <= 17){
        NSLog(@"17点之前，工作");
    }else{
        work.state = [[TFQEveningState alloc] init];
        [work writeCode];
    }
}

@end
