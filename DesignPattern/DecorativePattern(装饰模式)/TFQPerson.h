//
//  TFQPerson.h
//  DesignPattern
//
//  Created by 王立志 on 2018/6/28.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TFQPerson : NSObject

@property (nonatomic, strong)NSString *name;
- (instancetype)initWithName:(NSString *)name;
- (void)show;

@end
