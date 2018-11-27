//
//  ViewController.m
//  KaiXinQianDai
//
//  Created by xiaoning on 2018/11/26.
//  Copyright © 2018年 xiaoning. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"222222");
    
    NSString *str = KXQDString(@"%@-%@--%@",@"2222",@"3333",@"4444");
    NSLog(@"%@",str);
    
}


@end
