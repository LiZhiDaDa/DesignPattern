//
//  TFQCommand.h
//  DesignPattern
//
//  Created by 王立志 on 2018/7/9.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TFQCook.h"

@interface TFQCommand : NSObject

@property (nonatomic, strong)TFQCook *cook;
- (instancetype)initWithCooke:(TFQCook *)cook;
- (void)executeCommand;

@end
