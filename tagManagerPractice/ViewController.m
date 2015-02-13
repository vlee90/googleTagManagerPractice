//
//  ViewController.m
//  tagManagerPractice
//
//  Created by Vincent Lee on 2/13/15.
//  Copyright (c) 2015 VincentLee. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "TAGContainer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    TAGContainer *container = appDelegate.container;
    NSString *title = [container stringForKey:@"titleText"];
    NSLog(@"VC Title is : %@", title);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
