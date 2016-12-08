//
//  CalculateMaker.m
//  Calculate
//
//  Created by Burt on 2016/11/16.
//  Copyright © 2016年 Burt. All rights reserved.
//

#import "CalculateMaker.h"

@implementation CalculateMaker

//-(instancetype)init
//{
//    if (self=[super init]) {
//        
//    }
//    return self;
//}

-(CalculateMaker*(^)(int))add
{
    
    return ^CalculateMaker*(int value){
        _resault+=value;
        return self;
    };
    
}

-(CalculateMaker*(^)(NSString*))str
{
    return ^CalculateMaker*(NSString* value){
        _resault+=[value intValue];
        return self;
    };
}


-(CalculateMaker*(^)())v
{
    return ^CalculateMaker*(){
        _resault++;
        return self;
    };
}


-(NSString*(^)())string
{
    return ^NSString*(){
        return @"1";
    };
}

-(CalculateMaker*)ca:(int(^)(int re))block
{
    _resault= block(_resault);
    return self;
}

-(CalculateMaker*)isequal:(BOOL(^)(int re))block
{
    _isequal=block(_resault);
    return self;
}


@end
