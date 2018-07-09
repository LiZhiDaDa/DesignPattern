//
//  TFQUnitedNations.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/9.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import "TFQUnitedNations.h"
#import "TFQUSA.h"
#import "TFQIraq.h"

@implementation TFQUnitedNations

- (void)sendMessage:(NSString *)message fromCountry:(TFQCountry *)country{
    if([country isKindOfClass:[TFQIraq class]]){
        [self.USA getMessage:message];
    }else if([country isKindOfClass:[TFQUSA class]]){
        [self.Iraq getMessage:message];
    }
}

@end
