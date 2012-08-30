//
//  InvestorsView.m
//  cdr
//
//  Created by George Williams on 8/29/12.
//
//

#import "InvestorsView.h"

@interface InvestorsView ()

@end

@implementation InvestorsView

@synthesize fmv=_fmv;
@synthesize pmenu=_pmenu;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


-(void) reset
{
    [ self.pmenu collapse:NO ];
    
    [self.fmv restart];
}


-(void) stop
{
    [self.fmv stop];
}

-(void) viewDidAppear:(BOOL)animated
{
    [ super viewDidAppear:animated ];
    
    //self.view.backgroundColor = [ UIColor greenColor ];
    [ self.fmv play ];
    
}


-(void) viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated ];
    
    [ self.fmv stop ];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    self.fmv = [ [ [ MyMovieView alloc ]
                  initWithFrame:
                  CGRectMake(0, 0, 1024, 768):@"InvestorsByGeography_PieChart":2:nil ] autorelease ];
    //CGRectMake(0, 0, 500, 500):@"FILM_REEL":2 ] autorelease ];
    [ self.view addSubview:self.fmv ];
    
    
    self.pmenu = [ [ PMenu alloc ] init:self: NO ];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	if ( interfaceOrientation == UIInterfaceOrientationLandscapeLeft )
    {
        return YES;
    }
	else
    {
        return NO;
    }
}

@end
