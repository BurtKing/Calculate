//
//  PushViewController.h
//  Calculate
//
//  Created by Burt on 2016/11/16.
//  Copyright © 2016年 Burt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PushViewController : UIViewController
@property(nonatomic,strong)void(^block)(UITextField*);
@property(nonatomic,strong)PushViewController * aaa;
@property(nonatomic,strong)PushViewController * bbb;
@property(nonatomic,assign)int ccc;
@property(nonatomic,assign)int a;



-(PushViewController*)aaa;
-(PushViewController*)bbb;
-(int)ccc;

@end
