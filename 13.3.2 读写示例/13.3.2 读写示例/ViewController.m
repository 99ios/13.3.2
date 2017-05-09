//
//  ViewController.m
//  13.3.2 读写示例
//
//  Created by 李维佳 on 2017/4/4.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self updateData];
    [self readData];
    //[self deleteData];
}

//存储数据(新增/更新)
- (void)updateData {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSDate date] forKey:@"LastLoginTime"];
    [defaults setBool:NO forKey:@"IsFirstLogin"];
    [defaults setValue:@"99iOS" forKey:@"UserName"];
    [defaults synchronize];
}
//读取数据
- (void)readData {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSDate *lastLoginTime = [defaults objectForKey:@"LastLoginTime"];
    BOOL isFirstLogin = [defaults boolForKey:@"IsFirstLogin"];
    NSString *userName = [defaults valueForKey:@"UserName"];
    NSLog(@"%@--%d--%@", lastLoginTime, isFirstLogin, userName);
}
//删除数据
- (void)deleteData {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults removeObjectForKey:@"LastLoginTime"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
