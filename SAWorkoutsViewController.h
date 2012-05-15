//
//  SAWorkoutsViewController.h
//  SwimAppWithNavController
//
//  Created by David Margolies on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SAWorkoutsViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>{
    NSMutableArray *freeWorkouts;
}
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil workoutTypeName:(NSString*)name;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
