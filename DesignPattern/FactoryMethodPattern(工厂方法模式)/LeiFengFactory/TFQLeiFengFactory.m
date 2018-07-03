//
//  TFQLeiFengFactory.m
//  DesignPattern
//
//  Created by 王立志 on 2018/6/29.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import "TFQLeiFengFactory.h"

@implementation TFQLeiFengFactory

- (TFQLeiFeng *)createLeiFeng{
    return [[TFQLeiFeng alloc] init];
}

@end
