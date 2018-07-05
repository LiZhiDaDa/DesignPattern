//
//  TFQDataBaseManager.m
//  DesignPattern
//
//  Created by 王立志 on 2018/7/4.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import "TFQDataBaseManager.h"


@interface TFQDataBaseManager ()
//@property (class, nonatomic, strong)NSString *databaseName;
@end

@implementation TFQDataBaseManager

static NSString *_databaseName = nil;
+ (NSString *)databaseName{
    if(_databaseName == nil){
        //_databaseName = [[NSString alloc] init];
        //如果是nil  就设置默认值
        _databaseName = @"oracle";
    }
    return _databaseName;
}

+ (void)setDatabaseName:(NSString *)databaseName{
    if(databaseName != _databaseName){
        _databaseName = databaseName;
    }
}

+ (TFQDataBase *)getDataBase{
    TFQDataBase *database;
    if([self.databaseName isEqualToString:@"sqlserver"]){
        database = [[TFQSqlServer alloc] init];
    }else if ([self.databaseName isEqualToString:@"oracle"]){
        database = [[TFQOracle alloc] init];
    }
    return database;
}

+ (TFQCRUD *)getCRUD{
    TFQCRUD *crud;
    if([self.databaseName isEqualToString:@"sqlserver"]){
        crud = [[TFQCRUDSqlServer alloc] init];
    }else if ([self.databaseName isEqualToString:@"oracle"]){
        crud = [[TFQCRUDOracle alloc] init];
    }
    return crud;
}

@end
