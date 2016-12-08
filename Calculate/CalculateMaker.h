//
//  CalculateMaker.h
//  Calculate
//
//  Created by Burt on 2016/11/16.
//  Copyright © 2016年 Burt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculateMaker : NSObject

@property(nonatomic,assign)int resault;
@property(nonatomic,assign)BOOL isequal;

-(CalculateMaker*(^)(int))add;

-(CalculateMaker*(^)(NSString*))str;

-(CalculateMaker*(^)())v;

-(NSString*(^)())string;


-(CalculateMaker*)ca:(int(^)(int re))block;

-(CalculateMaker*)isequal:(BOOL(^)(int re))block;

@end
