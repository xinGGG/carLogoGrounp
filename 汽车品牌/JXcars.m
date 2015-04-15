//
//  JXcars.m
//  汽车品牌
//
//  Created by mac on 15/4/15.
//  Copyright (c) 2015年 xing. All rights reserved.
//

#import "JXcars.h"

@implementation JXcars

-(instancetype) initWithCar:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
+(instancetype) carsWithGrounp:(NSDictionary *)dict
{
    return [[self alloc]initWithCar:dict];
}


+(NSArray *) carsWithArray:(NSArray *)array
{
    NSMutableArray *arrM = [NSMutableArray array];
    for (NSDictionary *dict in array) {
        [arrM addObject:[self carsWithGrounp:dict]];
    }
    return arrM;
}

@end
