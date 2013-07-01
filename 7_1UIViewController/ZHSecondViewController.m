//
//  ZHSecondViewController.m
//  7_1UIViewController
//
//  Created by Edward on 13-7-1.
//  Copyright (c) 2013年 ZhiHu. All rights reserved.
//

#import "ZHSecondViewController.h"
#import "ZHSecondSubView.h"
@interface ZHSecondViewController ()

@end

@implementation ZHSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)loadView
{
  LOG;
  ZHSecondSubView *view = [[ZHSecondSubView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  [view setBackgroundColor:[UIColor orangeColor]];
  self.view = view;
}

- (void)viewDidLoad
{
  LOG;
  [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
  LOG;
  [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
  LOG;
  [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
  LOG;
  [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
  LOG;
  [super viewDidDisappear:animated];
}


- (void)viewDidUnload
{
  LOG;
  
  [super viewDidUnload];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
