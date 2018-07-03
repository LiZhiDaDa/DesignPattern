//
//  TFQStraTegy.h
//  DesignPattern
//
//  Created by 王立志 on 2018/6/28.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TFQAdd.h"
#import "TFQSubtract.h"
#import "TFQMultiply.h"
#import "TFQDivide.h"

@interface TFQStraTegy : NSObject

+ (void)getResultWithText:(NSString *)text;

@end
