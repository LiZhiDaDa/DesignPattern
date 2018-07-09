//
//  TFQRequest.h
//  DesignPattern
//
//  Created by 王立志 on 2018/7/9.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TFQRequest : NSObject

@property (nonatomic, strong)NSString *requestName;
@property (nonatomic, strong)NSString *requestType;
@property (nonatomic, assign)int requestCount;

@end
