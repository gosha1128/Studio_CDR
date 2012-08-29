//
//  SplashView.m
//  cdr
//
//  Created by George Williams on 8/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SplashView.h"

#import "AppDelegate.h"

#import "TimeLineView.h"

@interface SplashView ()

@end

@implementation SplashView

@synthesize next=_next;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) 
    {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.view.backgroundColor = [ UIColor redColor ];
    
}


- (void)viewDidUnload
{
    [super viewDidUnload];
}



-(void)GoToTimeline:(id)obj
{
    if ( !self.next )
    {
        self.next = YES;
        
        AppDelegate *app = (AppDelegate *)[ [ UIApplication sharedApplication ] delegate ];
        app.timelineController = [[[TimeLineView alloc] initWithNibName:@"TimeLineView" bundle:nil] autorelease ];
        app.window.rootViewController = app.timelineController;
    }
}

-(void)viewDidAppear:(BOOL)animated
{
    [ self performSelector:@selector(GoToTimeline:) withObject:self afterDelay:3 ];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

@end
