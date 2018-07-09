//
//  TFQWebSite.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/9.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import "TFQWebSite.h"
#import "TFQWebUser.h"

@interface TFQWebSite ()

@property (nonatomic, copy)NSString *webType;

@end

@implementation TFQWebSite

- (instancetype)initWithWebType:(NSString *)webType{
    if(self == [super init]){
        self.webType = webType;
    }
    return self;
}

- (void)setUser:(TFQWebUser *)user{
    _user = user;
    NSLog(@"当前产品：%@  用户：%@",self.webType,self.user.name);
}

@end
