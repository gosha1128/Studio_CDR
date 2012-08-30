//
//  PortfolioView.m
//  cdr
//
//  Created by George Williams on 8/29/12.
//
//

#import "PortfolioView.h"


#import "AppDelegate.h"


#import "MyMovieView.h"

@interface PortfolioView ()

@end

@implementation PortfolioView

@synthesize fmv=_fmv;
@synthesize pmenu=_pmenu;
@synthesize keypeople=_keypeople;
@synthesize fund7=_fund7;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


-(IBAction) goto_keypeople: (id)ctl
{
    AppDelegate *app = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [ app GoToKeypeople ];
}


-(IBAction) goto_fund7: (id)ctl
{
    AppDelegate *app = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [ app GoToFund7 ];
}

-(void) reset
{
    [ self.pmenu collapse:NO ];
    
    
    [ self.fmv restart];
}


-(void) stop
{
    [self.fmv stop];
}


-(void) viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated ];
    
    [ self.fmv stop ];
}

-(void) viewDidAppear:(BOOL)animated
{
    [ super viewDidAppear:animated ];
    
    //self.view.backgroundColor = [ UIColor greenColor ];
    [ self.fmv play ];
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    self.fmv = [ [ [ MyMovieView alloc ]
                  initWithFrame:
                  CGRectMake(0, 0, 1024, 768):@"homepage_part1":2:nil ] autorelease ];
    //CGRectMake(0, 0, 500, 500):@"FILM_REEL":2 ] autorelease ];
    [ self.view addSubview:self.fmv ];
    
    
    self.pmenu = [ [ PMenu alloc ] init:self: NO ];
    
    [ self.view bringSubviewToFront:self.keypeople ];
    [ self.view bringSubviewToFront:self.fund7 ];
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
