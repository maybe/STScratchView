//
//  STViewController.h
//  STScratchViewExample
//
//  Created by Sebastien Thiebaud on 12/17/12.
//  Copyright (c) 2012 Sebastien Thiebaud. All rights reserved.
//

#import <UIKit/UIKit.h>

@class STScratchView;
@interface STViewController : UIViewController

@property (nonatomic, strong) STScratchView *scratchView;
@property (nonatomic, strong) UIImageView *alphaView;

@end
