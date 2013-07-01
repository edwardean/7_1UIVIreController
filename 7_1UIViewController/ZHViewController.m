//
//  ZHViewController.m
//  7_1UIViewController
//
//  Created by Edward on 13-7-1.
//  Copyright (c) 2013年 ZhiHu. All rights reserved.
//

#import "ZHViewController.h"

@interface ZHViewController ()

@end

@implementation ZHViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

#pragma view life cycle

/**
 If you access the view property and its valus is nil, the view controller 
 automatically calls the loadview method and returns the resulting view;
 **/
- (void)loadView
{
  self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
  [self.view setBackgroundColor:[UIColor whiteColor]];
}


- (void)viewWillAppear:(BOOL)animated
{
  /**
   Because accessing the view property can cause the view to be loaded automatically,
   you can use the isViewLoaded method to determine if the view is currently in memory. 
   Unlike this property, the isViewLoaded property does not force the loading of 
   the view if it is not currently in memory.
   **/
  if ([self isViewLoaded]) {
    NSLog(@"view is Loaded");
    
    // do other some things here....
  }
}
- (void)viewDidLoad
{
  [super viewDidLoad];
	// Do any additional setup after loading the view.
}

//  Our Proj Using ARC,this method will do some different things
- (void)didReceiveMemoryWarning
{
  /**
   The UIViewController class can automatically set the view property to nil during 
   low-memory conditions and also when the view controller itself is finally released.
   **/
  [super didReceiveMemoryWarning];
    
}

@end
