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

//@synthesize phase=_phase;
@synthesize fmv=_fmv;
@synthesize fmv2=_fmv2;

@synthesize pmenu=_pmenu;
@synthesize sv=_sv;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

/*
-(IBAction) GoToPhase: (id)ctl
{
    AppDelegate *app = (AppDelegate *)[ [ UIApplication sharedApplication ] delegate ];
    if ( app.phaseController == nil )
    {
        app.phaseController = [ [ [ PhaseView alloc ] initWithNibName:@"PhaseView" bundle:nil ] autorelease ];
    }
    
    app.window.rootViewController = app.phaseController;
}
 */

-(void) viewWillAppear:(BOOL)animated
{
    [ super viewWillAppear:animated ];
    
    [ self.fmv play ];
}


-(void) reset
{
    [ self.pmenu collapse:NO ];
    
    self.sv.contentOffset = CGPointMake(0, 0);
    
    [ self.fmv restart];
    
}

-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    [self.fmv stop];
    [self.fmv2 stop];
}

-(void)check2
{
    if ( self.sv.contentOffset.x >= (1024*4-10) )
    {
        if ( !self.fmv2.playing )
        {
            [ self.fmv2 play ];
        }
    }
}

-(void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView
{
    [ self check2 ];
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    [ self check2 ];
}

-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    [ self check2 ];
}


-(void) stop
{
    [self.fmv stop];
    [self.fmv2 stop];
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

/*
-(IBAction)GoToKeypeople:(id)obj
{
        
    AppDelegate *app = (AppDelegate *)[ [ UIApplication sharedApplication ] delegate ];
        
    [ app GoToKeypeople ];
    
}
 */

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    self.sv = [ [ [ UIScrollView alloc ] initWithFrame:CGRectMake(0,0,1024,768) ] autorelease ];
    self.sv.delegate = self;
    self.sv.backgroundColor = [ UIColor whiteColor ];
    self.sv.contentSize = CGSizeMake(1024*5, 768);
    [ self.view addSubview:self.sv ];
    self.sv.multipleTouchEnabled = YES;
    self.sv.directionalLockEnabled = YES;
    self.sv.contentOffset = CGPointMake(0,0);
    self.sv.pagingEnabled = YES;
    self.sv.scrollEnabled = YES;
    self.sv.showsVerticalScrollIndicator = YES;
    self.sv.showsHorizontalScrollIndicator = YES;
    
    // Do any additional setup after loading the view from its nib.
    
    self.fmv = [ [ [ MyMovieView alloc ] 
                   initWithFrame:
                  CGRectMake(0, 0, 1024, 768):@"homepage_part2":2:@"FRAME_03_Fund_Stats_b" ] autorelease ];
                   //CGRectMake(0, 0, 500, 500):@"FILM_REEL":2 ] autorelease ];
    //[ self.view addSubview:self.fmv ];
    [ self.sv addSubview:self.fmv ];
    
    
    UIImageView *page2 = [ [ UIImageView alloc ] initWithImage:[ UIImage imageNamed:@"Frame_04_IRR_b"] ];
    [ self.sv addSubview:page2];
    [ page2 setFrame:CGRectMake(1024, 0, 1024, 768)];
    
    UIImageView *page3 = [ [ UIImageView alloc ] initWithImage:[ UIImage imageNamed:@"frame_05_irrvsbenchmarks_c"] ];
    [ self.sv addSubview:page3];
    [ page3 setFrame:CGRectMake(1024*2, 0, 1024, 768)];
    
    UIImageView *page4 = [ [ UIImageView alloc ] initWithImage:[ UIImage imageNamed:@"FRAME_07_Portfolio_Breakdown_c_V2"] ];
    [ self.sv addSubview:page4];
    [ page4 setFrame:CGRectMake(1024*3, 0, 1024, 768)];
    
    self.fmv2 = [ [ [ MyMovieView alloc ]
                  initWithFrame:
                   CGRectMake(1024*4, 0, 1024, 768):@"sustainability_metrics":2:@"whitebox" ] autorelease ];
    //CGRectMake(0, 0, 500, 500):@"FILM_REEL":2 ] autorelease ];
    //[ self.view addSubview:self.fmv ];
    [ self.sv addSubview:self.fmv2 ];
    
    self.pmenu = [ [ PMenu alloc ] init:self: NO ];
    
    // z order...
    //[ self.view bringSubviewToFront:self.phase ];
    
    
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
