//
//  BYViewController.m
//  DetectTest
//
//  Created by cihui on 11/16/2022.
//  Copyright (c) 2022 cihui. All rights reserved.
//

#import "BYViewController.h"
#import <CLLivingDetectSDK/CLLivingDetectSDK.h>

@interface BYViewController ()

@end

@implementation BYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    [CLLivingDetectManager initWithAppId:@"KQ6WTnju"];
    [CLLivingDetectManager setPrintConsoleEnable:YES];
    
    CLLvingConfig * config = [CLLvingConfig defaultConfig];
    
    [CLLivingDetectManager setLivingConfig:config];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [CLLivingDetectManager startVerifyWithViewController:self completion:^(CLLivingResult * _Nonnull result) {
            
            NSLog(@"");
            
        }];
    });
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
