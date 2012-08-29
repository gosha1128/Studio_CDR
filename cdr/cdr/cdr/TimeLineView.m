//
//  TimeLineView.m
//  cdr
//
//  Created by George Williams on 8/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TimeLineView.h"

#import "AppDelegate.h"

#import "PhaseView.h"

@interface TimeLineView ()

@end

@implementation TimeLineView

@synthesize phase=_phase;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


-(IBAction) GoToPhase: (id)ctl
{
    AppDelegate *app = (AppDelegate *)[ [ UIApplication sharedApplication ] delegate ];
    if ( app.phaseController == nil )
    {
        app.phaseController = [ [ [ PhaseView alloc ] initWithNibName:@"PhaseView" bundle:nil ] autorelease ];
    }
    
    app.window.rootViewController = app.phaseController;
}

-(void) viewDidAppear:(BOOL)animated
{
    self.view.backgroundColor = [ UIColor greenColor ];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

@end
