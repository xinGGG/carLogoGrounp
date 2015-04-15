//
//  JXcars.h
//  汽车品牌
//
//  Created by mac on 15/4/15.
//  Copyright (c) 2015年 xing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JXcars : NSObject
@property (strong ,nonatomic)NSString* icon;
@property (strong,nonatomic)NSString* name;

-(instancetype) initWithCar:(NSDictionary *)dict;
+(instancetype) carsWithGrounp:(NSDictionary *)dict;
+(NSArray *) carsWithArray:(NSArray *)array;
@end
