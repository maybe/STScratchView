//
//  STViewController.m
//  STScratchViewExample
//
//  Created by Sebastien Thiebaud on 12/17/12.
//  Copyright (c) 2012 Sebastien Thiebaud. All rights reserved.
//

#import "STViewController.h"
#import "STScratchView.h"

@interface STViewController ()

@end

@implementation STViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Added the STScratchView to the controller
    _scratchView = [[STScratchView alloc] initWithFrame:CGRectMake(10.0, 20.0, 80.0, 80.0)];
    [self.view addSubview:_scratchView];

    // Define the view which hide the content
    UIView *viewToScratch = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 80.0, 80.0)];
    [viewToScratch setBackgroundColor:[UIColor redColor]];
    [viewToScratch setUserInteractionEnabled:YES];
    
    UIImageView *imageTest = [[UIImageView alloc] initWithFrame:CGRectMake(0.0, 0.0, 80.0, 80.0)];
    [imageTest setImage:[UIImage imageNamed:@"395878_492130997483748_1119203742_n.jpg"]];
    
    [_scratchView setHideView:imageTest];
    
    
    ///
    
    _alphaView = [[UIImageView alloc] initWithFrame:CGRectMake(10.0, 140.0, 80.0, 80.0)];
    [_alphaView setImage:[_scratchView returnImage]];
    [self.view addSubview:_alphaView];
    
    [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(upd) userInfo:nil repeats:YES];
}

- (void)upd
{
    [_alphaView setImage:[_scratchView returnImage]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
