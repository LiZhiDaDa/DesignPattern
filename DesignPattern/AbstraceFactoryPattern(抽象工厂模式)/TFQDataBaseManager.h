//
//  TFQDataBaseManager.h
//  DesignPattern
//
//  Created by 王立志 on 2018/7/4.
//  Copyright © 2018年 王立志. All rights reserved.
//

#import "TFQSqlServer.h"
#import "TFQOracle.h"
#import "TFQCRUDSqlServer.h"
#import "TFQCRUDOracle.h"

@interface TFQDataBaseManager : NSObject

///声明类属性
@property (class, nonatomic, strong)NSString *databaseName;
+ (TFQDataBase *)getDataBase;
+ (TFQCRUD *)getCRUD;

@end
