//
//  TFQWebFactory.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/9.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import "TFQWebFactory.h"
#import "TFQWebSite.h"

@interface TFQWebFactory ()

@property (nonatomic, strong)NSMutableDictionary *dict;

@end

@implementation TFQWebFactory

- (instancetype)init{
    if(self == [super init]){
        self.dict = [NSMutableDictionary dictionary];
    }
    return self;
}

- (TFQWebSite *)getWebSiteWithType:(NSString *)webType{
    if([self.dict.allKeys containsObject:webType]){
        return [self.dict objectForKey:webType];
    }else{
        TFQWebSite *website = [[TFQWebSite alloc] initWithWebType:webType];
        [self.dict setObject:website forKey:webType];
        return website;
    }
}

- (void)outputWebsites{
    NSLog(@"当前网站总数为：%d",(int)self.dict.count);
}

@end
