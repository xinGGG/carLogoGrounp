//
//  JXcarGrounp.h
//  汽车品牌
//
//  Created by mac on 15/4/15.
//  Copyright (c) 2015年 xing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JXcarGrounp : NSObject

@property (strong,nonatomic) NSString *title;

//存放car 数组
@property (strong,nonatomic) NSArray *cars;

//实例方法


- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)carsWithDict:(NSDictionary *)dict;
+ (NSArray *)Root;

@end
