//
//  SAWorkoutDetailsViewController.h
//  SwimAppWithNavController
//
//  Created by David Margolies on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SAWorkout;

@interface SAWorkoutDetailsViewController : UIViewController {

}
@property (weak, nonatomic) IBOutlet UILabel *description;
@property (weak, nonatomic) SAWorkout *workout;
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil workout:(SAWorkout *)workout;
@end
