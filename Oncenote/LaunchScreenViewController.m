
//
//  LaunchScreenViewController.m
//  Oncenote
//
//  Created by chenyufeng on 15/11/15.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "LaunchScreenViewController.h"
#import "AppDelegate.h"
#import "AllUtils.h"

@interface LaunchScreenViewController ()

@end

@implementation LaunchScreenViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
}


- (void)viewDidAppear:(BOOL)animated{

  [super viewDidAppear:animated];
  NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
  
  if ([userDefaults objectForKey:@"username"] != nil && [userDefaults objectForKey:@"password"] != nil ) {
    //直接跳到主界面；
    NSLog(@"直接跳到主界面");
    
    AppDelegate *globalApp = [[UIApplication sharedApplication] delegate];
    globalApp.GLOBAL_USERNAME = [userDefaults objectForKey:@"username"];
    globalApp.GLOBAL_USERID = [userDefaults objectForKey:@"userId"];
    globalApp.GLOBAL_NICKNAME = [userDefaults objectForKey:@"nickname"];
    
    
    [AllUtils jumpToViewController:@"MainViewController" contextViewController:self handler:nil];
    
    
    
  }else{
    NSLog(@"跳到登录界面");
    //跳到登录界面；
    
    [AllUtils jumpToViewController:@"LoginViewController" contextViewController:self handler:nil];
    
  }
}


@end







