//
//  CalculaterManager.m
//  Calculate
//
//  Created by Burt on 2016/11/16.
//  Copyright © 2016年 Burt. All rights reserved.
//

#import "CalculaterManager.h"

@implementation CalculaterManager

+(int)makeResault:(void(^)(CalculateMaker*make))block
{
    CalculateMaker * ab=[[CalculateMaker alloc]init];
    
    block(ab);
    
    return ab.resault;
    
}


@end
