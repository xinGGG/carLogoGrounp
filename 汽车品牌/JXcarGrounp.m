//
//  JXcarGrounp.m
//  汽车品牌
//
//  Created by mac on 15/4/15.
//  Copyright (c) 2015年 xing. All rights reserved.
//

#import "JXcarGrounp.h"
#import "JXcars.h"
@implementation JXcarGrounp

- (instancetype)initWithDict:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        [self setValue:dict[@"title"] forKey:@"title"];
        self.cars = [JXcars carsWithArray:dict[@"cars"]];
    }
    return self;
}
+ (instancetype)carsWithDict:(NSDictionary *)dict
{
    return [[self alloc]initWithDict:dict];
}
+ (NSArray *)Root
{
    NSArray *arr = [[NSArray alloc]initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"cars_total.plist" ofType:nil]];
    NSMutableArray *arrM = [NSMutableArray array];
    for (NSDictionary *dict in arr) {
        [arrM addObject:[self carsWithDict:dict]];
    }
    return arrM;
}

@end
