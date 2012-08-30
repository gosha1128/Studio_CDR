//
//  KeyPeopleView.m
//  cdr
//
//  Created by George Williams on 8/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "KeyPeopleView.h"

#import "AppDelegate.h"

@interface KeyPeopleView ()

@end

@implementation KeyPeopleView

@synthesize fmv=_fmv;
@synthesize portfolio_button=_portfolio_button;
@synthesize thomas_button=_thomas_button;

@synthesize pmenu=_pmenu;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}

-(void) reset
{
    [ self.pmenu collapse:NO ];
    
    [ self.fmv restart ];
}

-(void) stop
{
    [self.fmv stop];
}


-(IBAction) GoToPortfolio:(id)obj
{
    AppDelegate *app = (AppDelegate *)[[ UIApplication sharedApplication] delegate ];
    [ app GoToPortfolio ];
}


-(IBAction) GoToThomas:(id)obj
{
    AppDelegate *app = (AppDelegate *)[[ UIApplication sharedApplication] delegate ];
    [ app GoToThomas ];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    self.fmv = [ [ [ MyMovieView alloc ]
                  initWithFrame:
                  CGRectMake(0, 0, 1024, 768):@"timeline_keypeople":2:nil ] autorelease ];
    //CGRectMake(0, 0, 500, 500):@"FILM_REEL":2 ] autorelease ];
    [ self.view addSubview:self.fmv ];
    
    
    self.pmenu = [ [ PMenu alloc ] init:self: NO ];
    
    [ self.view bringSubviewToFront:self.portfolio_button];
    [ self.view bringSubviewToFront:self.thomas_button ];
}


-(void) viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated ];
    
    [ self.fmv stop ];
}

-(void) viewDidAppear:(BOOL)animated
{
    [ super viewDidAppear:animated];
    
    [ self.fmv play ];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	if ( interfaceOrientation == UIInterfaceOrientationLandscapeLeft ) return YES;
	else return NO;
}

@end
