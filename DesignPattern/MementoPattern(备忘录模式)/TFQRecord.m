//
//  TFQRecord.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/5.
//  Copyright © 2018年 Thread_Fight_Queue. All rights reserved.
//

#import "TFQRecord.h"
#import "TFQGamePlayer.h"

@interface TFQRecord ()

@property (nonatomic, copy)NSString *blood;
@property (nonatomic, copy)NSString *chaKeLa;

@end

@implementation TFQRecord

- (void)saveWithPlayer:(TFQGamePlayer *)player{
    self.blood = player.blood;
    self.chaKeLa = player.chaKeLa;
}
- (void)resurrectionWithPlayer:(TFQGamePlayer *)player{
    player.blood = self.blood;
    player.chaKeLa = self.chaKeLa;
}

@end
