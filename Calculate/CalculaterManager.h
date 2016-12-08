//
//  CalculaterManager.h
//  Calculate
//
//  Created by Burt on 2016/11/16.
//  Copyright © 2016年 Burt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CalculateMaker.h"

@interface CalculaterManager : NSObject

+(int)makeResault:(void(^)(CalculateMaker*make))a;

@end
