//
//  TFQGiftA.h
//  DesignPattern
//
//  Created by 王立志 on 2018/6/29.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import "TFQGift.h"
#import "TFQGirlC.h"

@interface TFQGiftA : TFQGift

- (instancetype)initWithGirl:(TFQGirlC *)girl andSelfName:(NSString *)selfName andDelegateName:(NSString *)delegateName;

@end
