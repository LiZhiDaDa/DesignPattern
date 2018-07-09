//
//  TFQLeader.h
//  DesignPattern
//
//  Created by 王立志 on 2018/7/9.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TFQRequest.h"

@interface TFQLeader : NSObject

@property (nonatomic, strong)NSString *name;
@property (nonatomic, strong)TFQLeader *superior;
- (instancetype)initWithName:(NSString *)name;
- (void)handelRequest:(TFQRequest *)request;
- (NSString *)getLogWithRequest:(TFQRequest *)request;

@end
