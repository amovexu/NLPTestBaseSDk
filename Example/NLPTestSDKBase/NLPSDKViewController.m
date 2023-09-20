//
//  NLPSDKViewController.m
//  NLPTestSDKBase
//
//  Created by amove on 09/20/2023.
//  Copyright (c) 2023 amove. All rights reserved.
//

#import "NLPSDKViewController.h"
#import <NLPTestSDKBase/UIView+AmoveExtension.h>

@interface NLPSDKViewController ()

@end

@implementation NLPSDKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(20, 100, self.view.Amove_width -40, 100)];
    [self.view addSubview:bgView];
    [bgView Amove_addShadowWithColor:[UIColor redColor] shadowOffset:CGSizeMake(2, 10) shadowRadius:2 shadowOpacity:0.7];
    bgView.backgroundColor = [UIColor blueColor];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
