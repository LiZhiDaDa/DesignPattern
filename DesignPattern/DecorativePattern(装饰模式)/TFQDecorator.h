//
//  TFQDecorator.h
//  DesignPattern
//
//  Created by 王立志 on 2018/6/28.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TFQPerson.h"

@interface TFQDecorator : TFQPerson

@property (nonatomic, strong)TFQPerson *person;
- (instancetype)initWithPerson:(TFQPerson *)person;

@end
