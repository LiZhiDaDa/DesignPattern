//
//  TFQRecord.h
//  DesignPattern
//
//  Created by 王立志 on 2018/7/5.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TFQGamePlayer;

@interface TFQRecord : NSObject

- (void)saveWithPlayer:(TFQGamePlayer *)player;
- (void)resurrectionWithPlayer:(TFQGamePlayer *)player;

@end
