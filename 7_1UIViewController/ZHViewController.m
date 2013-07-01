//
//  ZHViewController.m
//  7_1UIViewController
//
//  Created by Edward on 13-7-1.
//  Copyright (c) 2013年 ZhiHu. All rights reserved.
//

#import "ZHViewController.h"
#import "ZHFirstSubViewController.h"
#import "ZHSecondViewController.h"
@interface ZHViewController ()

@property (nonatomic, retain) ZHFirstSubViewController *firstVC;
@property (nonatomic, retain) ZHSecondViewController *secondVC;

@end

@implementation ZHViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"RootViewController";
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
    self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.view setBackgroundColor:[UIColor whiteColor]];
  
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setFrame:CGRectMake(0, 0, 60, 35)];
    [button setTitle:@"Tap" forState:UIControlStateNormal];
    [button setCenter:self.view.center];
    SEL selector = NSSelectorFromString(@"showSubViews");
    if ([self respondsToSelector:selector]) {
      [button addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    }
    [self.view addSubview:button];
}


- (void)viewWillAppear:(BOOL)animated
{
  [super viewWillAppear:animated];
  /**
   Because accessing the view property can cause the view to be loaded automatically,
   you can use the isViewLoaded method to determine if the view is currently in memory. 
   Unlike this property, the isViewLoaded property does not force the loading of 
   the view if it is not currently in memory.
   **/
  if ([self isViewLoaded]) {
    
    // do other some things here....
  }
}
- (void)viewDidLoad
{
  [super viewDidLoad];
  
  ZHFirstSubViewController *firstVC = [[ZHFirstSubViewController alloc] initWithNibName:nil bundle:nil];
  [self addChildViewController:firstVC];
  
  ZHSecondViewController *secondVC = [[ZHSecondViewController alloc] initWithNibName:nil bundle:nil];
  [self addChildViewController:secondVC];
}

- (void)viewDidAppear:(BOOL)animated
{
  [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
  [super viewWillDisappear:animated];
}
- (void)viewDidDisappear:(BOOL)animated
{
  [super viewDidDisappear:animated];
}

- (void)viewWillLayoutSubviews
{
  
}

- (void)viewDidLayoutSubviews
{
  
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


#pragma custom methods
- (void)showSubViews
{
  if (self.firstVC == nil) {
    self.firstVC = [[ZHFirstSubViewController alloc] initWithNibName:nil bundle:nil];
  }
  [[self navigationController] pushViewController:_firstVC animated:YES];
  _firstVC.title = @"A";
}
@end
