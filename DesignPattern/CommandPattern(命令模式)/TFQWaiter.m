//
//  TFQWaiter.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/9.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import "TFQWaiter.h"
#import "TFQCommand.h"

@interface TFQWaiter ()

@property (nonatomic, strong)NSMutableArray *commandArray;

@end

@implementation TFQWaiter

- (instancetype)init{
    if(self == [super init]){
        self.commandArray = [NSMutableArray array];
    }
    return self;
}

- (void)receiveCommand:(TFQCommand *)command{
    [self.commandArray addObject:command];
}
- (void)notifyCook{
    for(TFQCommand *command in self.commandArray){
        [command executeCommand];
    }
}

@end
