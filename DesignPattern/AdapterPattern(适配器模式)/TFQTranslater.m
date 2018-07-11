//
//  TFQTranslater.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/5.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import "TFQTranslater.h"
#import "TFQNBAYaoMing.h"

@interface TFQTranslater ()

@property (nonatomic, strong)TFQNBAYaoMing *yaoming;

@end

@implementation TFQTranslater

- (instancetype)initWithName:(NSString *)name{
    if(self == [super init]){
        self.yaoming = [[TFQNBAYaoMing alloc] initWithName:name];
    }
    return self;
}

- (void)attack{
    [self.yaoming attack];
}

- (void)defense{
    [self.yaoming defense];
}

@end
