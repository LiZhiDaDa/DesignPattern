//
//  TFQMorningState.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/4.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import "TFQMorningState.h"
#import "TFQWork.h"
#import "TFQNoonState.h"

@implementation TFQMorningState

- (void)writeCode{
    
}

- (void)writeCodeWithWork:(TFQWork *)work{
    if(work.hour <= 12){
        NSLog(@"12点之前，饱满工作");
    }else{
        work.state = [[TFQNoonState alloc] init];
        [work writeCode];
    }
}

@end
