//
//  trial_fourViewController.m
//  trial_four
//
//  Created by Matthew Swann on 6/20/14.
//  Copyright (c) 2014 Matthew Swann. All rights reserved.
//

#import "trial_fourViewController.h"
#import "trial_four_yellowViewController.h"
#import "trial_four_blueViewController.h"

@interface trial_fourViewController ()

@end

@implementation trial_fourViewController

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
    
    self.trial_four_blue_view_controller = [[trial_four_blueViewController alloc]
                               initWithNibName:@"blue_view" bundle:nil];
    [self.view insertSubview:self.trial_four_blue_view_controller.view atIndex:0];
    
}

- (IBAction)switch_views:(id)sender {
    
    if (self.trial_four_yellow_view_controller.view.superview == nil) {
        
        if ( self.trial_four_yellow_view_controller == nil ) {
        
            self.trial_four_yellow_view_controller = [[trial_four_yellowViewController alloc]
                                                      initWithNibName:@"yellow_view" bundle:nil];
            
        }
        [self.trial_four_blue_view_controller.view removeFromSuperview];
        [self.view insertSubview:self.trial_four_yellow_view_controller.view atIndex:0];
    }
    else {
        
        if ( self.trial_four_blue_view_controller.view == nil ){
            
            self.trial_four_blue_view_controller = [[trial_four_blueViewController alloc]
                                                    initWithNibName:@"blue_view" bundle:nil];
            
        }
        [self.trial_four_yellow_view_controller.view removeFromSuperview];
        [self.view insertSubview:self.trial_four_blue_view_controller.view atIndex:0];
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    if ( self.trial_four_blue_view_controller.view.superview == nil ) {
    
        self.trial_four_blue_view_controller = nil;
    
    } else {
    
        self.trial_four_yellow_view_controller = nil;
        
    }
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
