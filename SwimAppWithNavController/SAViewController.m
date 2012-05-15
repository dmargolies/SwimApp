//
//  SAViewController.m
//  SwimAppWithNavController
//
//  Created by David Margolies on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SAViewController.h"
#import "SAWorkoutTypesViewController.h"

@interface SAViewController ()

@end

@implementation SAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.title = @"Home";
    
    //we can hide the navbar for this "home" view
    self.navigationController.navigationBarHidden = YES;
}


-(void) viewWillAppear:(BOOL)animated{
    self.navigationController.navigationBarHidden = YES;
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)pushWorkoutTypes:(id)sender {
    //push our WorkoutTypes view controller on
    SAWorkoutTypesViewController *workoutTypes = [[SAWorkoutTypesViewController alloc] initWithNibName:@"SAWorkoutTypesViewController" bundle:nil];
    [self.navigationController pushViewController:workoutTypes animated:YES];
}
@end
