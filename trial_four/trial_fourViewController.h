//
//  trial_fourViewController.h
//  trial_four
//
//  Created by Matthew Swann on 6/20/14.
//  Copyright (c) 2014 Matthew Swann. All rights reserved.
//

#import <UIKit/UIKit.h>

@class trial_four_blueViewController;
@class trial_four_yellowViewController;

@interface trial_fourViewController : UIViewController

@property (strong, nonatomic) trial_four_yellowViewController *trial_four_yellow_view_controller;

@property (strong, nonatomic) trial_four_blueViewController *trial_four_blue_view_controller;

- (IBAction)switch_views:(id)sender;

@end
