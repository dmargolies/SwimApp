//
//  SAAppDelegate.m
//  SwimAppWithNavController
//
//  Created by David Margolies on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SAAppDelegate.h"

#import "SAViewController.h"

#import "SAWorkoutType.h"
#import "SAWorkout.h"

@implementation SAAppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;
@synthesize navigationController = _navigationController;
@synthesize workoutTypes = _workoutTypes;
@synthesize freeWorkouts = _freeWorkouts;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    //make some example workout types
    SAWorkoutType *free = [[SAWorkoutType alloc] init];
    free.typeName = @"Free";
    free.typeDescription = @"freestyle workouts here";
    SAWorkoutType *distance = [[SAWorkoutType alloc] init];
    distance.typeName = @"Distance";
    distance.typeDescription = @"distance workouts here";
    self.workoutTypes = [[NSMutableArray alloc] initWithObjects:free, distance, nil];
    
    //make some example free workouts (probably should be using a map
    SAWorkout *tenLaps = [[SAWorkout alloc] init];
    tenLaps.workoutName = @"ten laps";
    tenLaps.workoutDescription = @"swim ten laps free, stop, then do something else";
    SAWorkout *fiveLaps = [[SAWorkout alloc] init];
    fiveLaps.workoutName = @"five laps";
    fiveLaps.workoutDescription = @"swim 5 laps, then you're all done!";
    self.freeWorkouts = [[NSMutableArray alloc] initWithObjects:tenLaps, fiveLaps, nil];
    
    //setup view
    self.viewController = [[SAViewController alloc] initWithNibName:@"SAViewController" bundle:nil];
    self.navigationController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
    [self.window addSubview:self.navigationController.view];
    //self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
