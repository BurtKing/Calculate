//
//  PushViewController.m
//  Calculate
//
//  Created by Burt on 2016/11/16.
//  Copyright © 2016年 Burt. All rights reserved.
//

#import "PushViewController.h"

@interface PushViewController ()<CAAnimationDelegate>

@end

@implementation PushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.view.backgroundColor=[UIColor yellowColor];
    
    
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    CATransition *animation = [CATransition animation];
    animation.delegate = self;
    animation.timingFunction = UIViewAnimationCurveEaseInOut;
    animation.fillMode = kCAFillModeForwards;
    animation.removedOnCompletion = YES;
    animation.autoreverses=NO;
    
    animation.type = @"suckEffect";
    
    [self.view.layer addAnimation:animation forKey:@"animation"];
    
    
    UITextField* tf1=[[UITextField alloc]init];
    tf1.text=@"111";
    self.block(tf1);
    [self dismissViewControllerAnimated:YES completion:nil];
}


-(PushViewController*)aaa
{
    return self;
}

-(PushViewController*)bbb
{
    return self;
}

-(int)ccc
{
    NSLog(@"ccc");
    return _a;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
