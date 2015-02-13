//
//  ViewController.m
//  GoogleTagManagerPracticeApp
//
//  Created by Vincent Lee on 2/12/15.
//  Copyright (c) 2015 VincentLee. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
//#import "AppDelegate.m"
#import "TAGContainer.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *titleTextLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    TAGContainer *container = appDelegate.container;
    
    NSString *titleText = [container stringForKey:@"titleText"];
    
    self.titleTextLabel.text = titleText;
    
    NSString *subtitle = [container stringForKey:@"Nil Key!"];
    NSLog(@"TEST %s",[subtitle isEqualToString:@""] ? "True" : "False");
    
    NSLog(@"%@",[container stringForKey:@"app id"]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
