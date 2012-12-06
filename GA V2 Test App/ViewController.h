//
//  ViewController.h
//  GA V2 Test App
//
//  Created by Aaron Bruce on 12/6/12.
//  Copyright (c) 2012 Cardinal Path. All rights reserved.

#import <UIKit/UIKit.h>

//import the ViewController from GA libs instead of UIKit
#import "GAITrackedViewController.h" 

//view controllers should all extend GAITrackedViewController instead of UIViewController
@interface ViewController : GAITrackedViewController{

}

@property (nonatomic, retain) UIButton *eventButton;

-(IBAction) eventTrigger;

@end
