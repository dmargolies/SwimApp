//
//  SAWorkoutTypesViewController.m
//  SwimAppWithNavController
//
//  Created by David Margolies on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SAWorkoutTypesViewController.h"
#import "SAAppDelegate.h"
#import "SAWorkoutType.h"
#import "SAWorkoutsViewController.h"

@interface SAWorkoutTypesViewController ()

@end

@implementation SAWorkoutTypesViewController
@synthesize tableView;

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
    // Do any additional setup after loading the view from its nib.
    //example workout types
    SAAppDelegate *delegate = (SAAppDelegate *)[[UIApplication sharedApplication] delegate];
    workoutTypes = delegate.workoutTypes;
    
    //setup
    self.title = @"Workout Types";
    //we want to top nav bar to show up now, since this is not the main screen
    self.navigationController.navigationBarHidden = NO;
}

- (void)viewDidUnload
{
    [self setTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark UITableViewDataSource Methods

- (UITableViewCell *)tableView:(UITableView *)tv cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tv dequeueReusableCellWithIdentifier:@"cell"];
    if(nil==cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    SAWorkoutType *thisType = [workoutTypes objectAtIndex:indexPath.row];
    cell.textLabel.text = thisType.typeName;
    return cell;
}
- (NSInteger)tableView:(UITableView *)tv numberOfRowsInSection:(NSInteger)section{
    return [workoutTypes count];
}

#pragma mark UITableViewDelegate Methods
- (void) tableView:(UITableView *)tv didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //create an instance of the workout view and pop it on the navigation
    //NSString * typeName = type.typeName;
    SAWorkoutType *type = [workoutTypes objectAtIndex:indexPath.row];
    NSString *typeName = type.typeName;
    SAWorkoutsViewController *workouts = [[SAWorkoutsViewController alloc] initWithNibName:@"SAWorkoutsViewController" bundle:nil workoutTypeName:typeName];
    [self.navigationController pushViewController:workouts animated:YES];
    
    
    [tv deselectRowAtIndexPath:indexPath animated:YES];
}

@end
