//
//  ViewController.m
//  Calculate
//
//  Created by Burt on 2016/11/16.
//  Copyright © 2016年 Burt. All rights reserved.
//

#import "ViewController.h"
#import "CalculaterManager.h"
#import "PushViewController.h"

@interface ViewController ()
{
    UITextField * tf;
}
@property(nonatomic,strong)NSMutableArray * arr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITextField * tf1=[[UITextField alloc]initWithFrame:CGRectMake(20, 64, 100, 30)];
    tf1.backgroundColor=[UIColor redColor];
    tf1.text=@"asd";
    tf1.autocapitalizationType=UITextAutocapitalizationTypeAllCharacters;
    [self.view addSubview:tf1];
    
    
    
    
    
    
    NSString * str=@"se00001-12-1";
    NSArray *array = [str componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"--"]];
    
    NSLog(@"!!!!!!!!!!!!!    %@",array);
    
    
    
    self.arr = [NSMutableArray array];
    for (int i = 0; i < 5; i ++) {
        [self.arr addObject:@(i)];
    }
    [self.arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if([obj integerValue] % 2)
        {
            [self.arr removeObject:obj];
            NSLog(@"%@",_arr);
        }
    }];
    
    for (NSNumber *num in self.arr) {
        NSLog(@"%@",num);
    }
    
    
    
    
    
    tf=[[UITextField alloc]initWithFrame:CGRectMake(100, 100, 100, 30)];
    [self.view addSubview:tf];
    
    
    
    
    
    int r=[CalculaterManager makeResault:^(CalculateMaker *make) {
        make.add(1).add(2);
        NSLog(@"%d",make.resault);
        make.str(@"0");
        make.v().v().v();
        make.string();
    }];
    
    NSLog(@"%d",r);
    
    
    CalculateMaker * c=[[CalculateMaker alloc]init];
    
    BOOL isequal=[[[c ca:^int(int re) {
        re+=1;
        re*=2;
        return re;
    }] isequal:^BOOL(int re) {
        return re==10;
    }] isequal];
    
    NSLog(@"%d",isequal);
    
    
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    PushViewController * vc=[[PushViewController alloc]init];
    vc.block=^(UITextField*tf1){
        tf.text=tf1.text;
    };
    
    vc.a=100;
    NSLog(@"%d",vc.aaa.bbb.ccc);
    NSLog(@"isequal:%d",[vc isEqual:vc.aaa.bbb]);
    
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
