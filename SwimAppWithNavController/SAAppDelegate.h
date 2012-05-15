//
//  SAAppDelegate.h
//  SwimAppWithNavController
//
//  Created by David Margolies on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SAViewController;

@interface SAAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) SAViewController *viewController;

@end
