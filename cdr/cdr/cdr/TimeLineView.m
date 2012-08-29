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

#import "MyMovieView.h"

@interface TimeLineView ()

@end

@implementation TimeLineView

@synthesize phase=_phase;
@synthesize fmv=_fmv;

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
    //self.view.backgroundColor = [ UIColor greenColor ];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.fmv = [ [ [ MyMovieView alloc ] 
                   initWithFrame:
                  CGRectMake(0, 0, 1024, 768):@"homepage_resize_h264":2 ] autorelease ];
                   //CGRectMake(0, 0, 500, 500):@"FILM_REEL":2 ] autorelease ];
    [ self.view addSubview:self.fmv ];
    
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
