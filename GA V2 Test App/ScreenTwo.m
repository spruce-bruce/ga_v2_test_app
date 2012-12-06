//
//  ScreenTwo.m
//  GA V2 Test App
//
//  Created by Aaron Bruce on 12/6/12.
//  Copyright (c) 2012 Cardinal Path. All rights reserved.
//

#import "ScreenTwo.h"

//import the header for the GA tracker
#import "GAI.h"

@interface ScreenTwo ()

@end

@implementation ScreenTwo

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //name the screen for GA reports
    self.trackedViewName = @"Screen 2";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *) event{
    NSLog(@"Setting Custom Dimension");
    
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker setCustom:1 dimension:@"Screen-Two-Tap"];
}

@end
