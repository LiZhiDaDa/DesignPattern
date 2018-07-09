//
//  TFQUnitedNations.h
//  DesignPattern
//
//  Created by 王立志 on 2018/7/9.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TFQCountry;
@class TFQUSA;
@class TFQIraq;

@interface TFQUnitedNations : NSObject

@property (nonatomic, strong)TFQUSA *USA;
@property (nonatomic, strong)TFQIraq *Iraq;
- (void)sendMessage:(NSString *)message fromCountry:(TFQCountry *)country;

@end
