//
//  AppDelegate.m
//  cdr
//
//  Created by George Williams on 8/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

#import "SplashView.h"

#import "TimeLineView.h"

#import "KeyPeopleView.h"

#import "PortfolioView.h"

#import "InvestorsView.h"

#import "ThomasView.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;
@synthesize splashController=_splashController;
@synthesize timelineController=_timelineController;
@synthesize phaseController=_phaseController;
@synthesize keypeopleController=_keypeopleController;
@synthesize portfolioController=_portfolioController;
@synthesize investorsController=_investorsController;
@synthesize thomasController=_thomasController;
@synthesize warned=_warned;

-(void) GoToHome
{
    
    [ self.splashController reset ];
    
    self.window.rootViewController = self.splashController;
}

-(void) GoToPortfolio
{
    if (self.portfolioController==nil)
    {
        self.portfolioController =
            [[[PortfolioView alloc] initWithNibName:@"PortfolioView" bundle:nil] autorelease ];
    }

    
    [ self.portfolioController reset ];
    
    self.window.rootViewController = self.portfolioController;
}

-(void) GoToFund7
{
    if (self.timelineController==nil)
    {
        self.timelineController = 
            [[[TimeLineView alloc] initWithNibName:@"TimeLineView" bundle:nil] autorelease ];
    }
    
    
    [ self.timelineController reset ];
    
    self.window.rootViewController = self.timelineController;
}


-(void) GoToKeypeople
{
    if (self.keypeopleController==nil)
    {
        self.keypeopleController =
        [[[KeyPeopleView alloc] initWithNibName:@"KeyPeopleView" bundle:nil] autorelease ];
    }
    
    
    [ self.keypeopleController reset ];
    
    
    self.window.rootViewController = self.keypeopleController;
}


-(void) GoToInvestors
{
    if (self.investorsController==nil)
    {
        self.investorsController =
            [[[InvestorsView alloc] initWithNibName:@"InvestorsView" bundle:nil] autorelease ];
    }
    
    
    [ self.investorsController reset ];
    
    self.window.rootViewController = self.investorsController;
}


-(void) GoToThomas
{
    if (self.thomasController==nil)
    {
        self.thomasController =
        [[[ThomasView alloc] initWithNibName:@"ThomasView" bundle:nil] autorelease ];
    }
    
    
    [ self.thomasController reset ];
    
    self.window.rootViewController = self.thomasController;
}

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

#if 0
-(void) report_memory {
    struct task_basic_info info;
    mach_msg_type_number_t size = sizeof(info);
    kern_return_t kerr = task_info(mach_task_self(),
                                   TASK_BASIC_INFO,
                                   (task_info_t)&info,
                                   &size);
    if( kerr == KERN_SUCCESS ) {
        NSLog(@"Memory in use (in bytes): %u", info.resident_size);
    } else {
        NSLog(@"Error with task_info(): %s", mach_error_string(kerr));
    }
}
#endif

-(void) lowMemNotification:(id)obj
{
    
    //[ self report_memory ];
    
#if 1
    if (!self.warned)
    {
        self.warned = YES;
    
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"App Low Memory"
                                                    message:@"App Low Memory"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
        [alert show];
        [alert release];
    }
#endif
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(lowMemNotification:)
                                                 name: UIApplicationDidReceiveMemoryWarningNotification
                                               object:nil];
    
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    
    //self.viewController = [[[ViewController alloc] initWithNibName:@"ViewController" bundle:nil] autorelease];
    //self.window.rootViewController = self.viewController;
    
    self.splashController = [[[SplashView alloc] initWithNibName:@"SplashView" bundle:nil] autorelease ];
    self.window.rootViewController = self.splashController;
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
