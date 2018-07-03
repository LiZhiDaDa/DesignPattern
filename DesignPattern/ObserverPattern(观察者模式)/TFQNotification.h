//
//  TFQNotification.h
//  DesignPattern
//
//  Created by 王立志 on 2018/7/3.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TFQNotification : NSObject

@property (nonatomic, strong)NSMutableArray *notifications;
- (void)sendNotification;

@end
