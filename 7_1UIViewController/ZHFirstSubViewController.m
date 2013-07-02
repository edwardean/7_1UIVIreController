//
//  ZHFirstSubViewController.m
//  7_1UIViewController
//
//  Created by Edward on 13-7-1.
//  Copyright (c) 2013年 ZhiHu. All rights reserved.
//

#import "ZHFirstSubViewController.h"
#import "ZHFirstSubView.h"
#import "ZHSecondViewController.h"
@interface ZHFirstSubViewController ()

@property (nonatomic, retain) ZHSecondViewController *secondVC;
@end

@implementation ZHFirstSubViewController

#pragma view life cycle
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)setView:(UIView *)view
{
  LOG;
  if (self.view != view) {
    self.view = view;
  }
}

//- (UIView *)view
//{
//  LOG;
//  return self.view;
//}

- (void)loadView
{
    LOG;
    ZHFirstSubView *view = [[ZHFirstSubView alloc] initWithFrame:[[UIScreen   mainScreen] bounds]];
    [view setBackgroundColor:[UIColor redColor]];
    self.view = view;
}
- (void)viewDidLoad
{
    LOG;
    [super viewDidLoad];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    self.navigationItem.rightBarButtonItem = barButtonItem;
    SEL selector = NSSelectorFromString(@"pushSecondView");
    if ([self respondsToSelector:selector]) {
      [button addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    }
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
  LOG;
  [super didReceiveMemoryWarning];
}


#pragma push view B
- (void)pushSecondView
{
    if (self.secondVC == nil) {
      self.secondVC = [[ZHSecondViewController alloc] initWithNibName:nil
                                                             bundle:nil];
    }
    [self.navigationController pushViewController:_secondVC animated:YES];
    _secondVC.title = @"B";
}
@end
