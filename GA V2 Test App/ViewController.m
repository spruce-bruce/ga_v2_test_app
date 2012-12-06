//
//  ViewController.m
//  GA V2 Test App
//
//  Created by Aaron Bruce on 12/6/12.
//  Copyright (c) 2012 Cardinal Path. All rights reserved.
//

#import "ViewController.h"

//import the header for the GA tracker
#import "GAI.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize eventButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //name the screen for GA reports
    self.trackedViewName = @"Home Screen";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - View lifecycle

-(IBAction) eventTrigger{
    NSLog(@"Triggering an Event");
    
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker trackEventWithCategory:@"TestEventCategory"
                         withAction:@"buttonPress"
                          withLabel:@"eventButton"
                          withValue:[NSNumber numberWithInt:1]];
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *) event{
    NSLog(@"Setting Custom Dimension");
    
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker setCustom:1 dimension:@"Home-Screen-Tap"];
}

@end
