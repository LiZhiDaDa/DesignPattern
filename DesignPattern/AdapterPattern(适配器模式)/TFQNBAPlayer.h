//
//  TFQNBAPlayer.h
//  DesignPattern
//
//  Created by 王立志 on 2018/7/5.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TFQNBAPlayer : NSObject

@property (nonatomic, strong)NSString *name;
- (instancetype)initWithName:(NSString *)name;
- (void)attack;
- (void)defense;

@end
