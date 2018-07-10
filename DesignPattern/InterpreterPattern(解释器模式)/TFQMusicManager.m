//
//  TFQMusicManager.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/10.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import "TFQMusicManager.h"
#import "TFQDao.h"
#import "TFQRuai.h"
#import "TFQMi.h"
#import "TFQFa.h"

@implementation TFQMusicManager

/**
 *  int : ASCII
 *  1   : 49
 *  2   : 50
 *  ...
 */
- (void)accept:(NSString *)input{
    TFQMusic *music = nil;
    for(int i=0; i<input.length; i++){
        NSLog(@"%d",i);
        unichar str = [input characterAtIndex:i];
        switch (str) {
            case 49:
                music = [[TFQDao alloc] init];
                break;
            case 50:
                music = [[TFQRuai alloc] init];
                break;
            case 51:
                music = [[TFQMi alloc] init];
                break;
            case 52:
                music = [[TFQFa alloc] init];
                break;
            default:
                NSLog(@"你输入的东西我识别不了，还没定义%d的具体操作",str);
                return;
                break;
        }
        [music sing];
    }
}

@end
