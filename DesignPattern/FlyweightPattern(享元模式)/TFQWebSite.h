//
//  TFQWebSite.h
//  DesignPattern
//
//  Created by 王立志 on 2018/7/9.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TFQWebUser;

@interface TFQWebSite : NSObject

@property (nonatomic, strong)TFQWebUser *user;
- (instancetype)initWithWebType:(NSString *)webType;

@end
