//
//  SAWorkoutTypesViewController.h
//  SwimAppWithNavController
//
//  Created by David Margolies on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SAWorkoutTypesViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>{
    NSMutableArray *workoutTypes;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
