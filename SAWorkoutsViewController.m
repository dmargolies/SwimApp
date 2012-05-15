//
//  SAWorkoutsViewController.m
//  SwimAppWithNavController
//
//  Created by David Margolies on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SAWorkoutsViewController.h"
#import "SAAppDelegate.h"
#import "SAWorkout.h"
#import "SAWorkoutDetailsViewController.h"

@interface SAWorkoutsViewController ()

@end

@implementation SAWorkoutsViewController
@synthesize tableView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil workoutTypeName:(NSString*) workoutType
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    self.title = workoutType;
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //example workout types
    SAAppDelegate *delegate = (SAAppDelegate *)[[UIApplication sharedApplication] delegate];
    freeWorkouts = delegate.freeWorkouts;
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
-(UITableViewCell *)tableView:(UITableView *)tv cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tv dequeueReusableCellWithIdentifier:@"cell"];
    if (nil==cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    SAWorkout *thisWorkout = [freeWorkouts objectAtIndex:indexPath.row];
    cell.textLabel.text = thisWorkout.workoutName;
    return cell;
}
- (NSInteger)tableView:(UITableView *)tv numberOfRowsInSection:(NSInteger)section{
    return [freeWorkouts count];
}

#pragma mark UITableViewDelegate Methods
- (void) tableView:(UITableView *)tv didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //create an instance of the workout view and pop it on the navigation
    //NSString * typeName = type.typeName;

    SAWorkout *workout = [freeWorkouts objectAtIndex:indexPath.row];

    SAWorkoutDetailsViewController *controller = [[SAWorkoutDetailsViewController alloc] initWithNibName:@"SAWorkoutDetailsViewController" bundle:nil workout:workout];
    [self.navigationController pushViewController:controller animated:YES];
    
    
    [tv deselectRowAtIndexPath:indexPath animated:YES];
}
@end
