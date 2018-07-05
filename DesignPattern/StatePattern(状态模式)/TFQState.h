//
//  TFQState.h
//  DesignPattern
//
//  Created by 王立志 on 2018/7/4.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TFQWork;


@interface TFQState : NSObject

- (void)writeCodeWithWork:(TFQWork *)work;

@end
