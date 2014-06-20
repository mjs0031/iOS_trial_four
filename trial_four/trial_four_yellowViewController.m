//
//  trial_four_yellowViewController.m
//  trial_four
//
//  Created by Matthew Swann on 6/20/14.
//  Copyright (c) 2014 Matthew Swann. All rights reserved.
//

#import "trial_four_yellowViewController.h"

@interface trial_four_yellowViewController ()

@end

@implementation trial_four_yellowViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)yellow_button_pressed {
    
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"yellow pressed"
                          message:@"pressed yellow"
                          delegate:nil
                          cancelButtonTitle:@"yes'ir"
                          otherButtonTitles:nil];
    [alert show];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
