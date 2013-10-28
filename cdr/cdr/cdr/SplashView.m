///
//  SplashView.m
//  cdr
//
//  Created by George Williams on 8/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SplashView.h"

#import "AppDelegate.h"

#import "TimeLineView.h"

#import "PMenu.h"

@interface SplashView ()

@end

@implementation SplashView

@synthesize next=_next;

@synthesize pmenu=_pmenu;

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
    
    //self.view.backgroundColor = [ UIColor redColor ];
    
    self.pmenu = [ [ PMenu alloc ] init:self :YES];
    
}

-(void) reset
{
    [ self.pmenu collapse:NO ];
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

-(void)GoToFund7:(id)obj
{
    if ( !self.next )
    {
        self.next = YES;
        
        AppDelegate *app = (AppDelegate *)[ [ UIApplication sharedApplication ] delegate ];
        
        [ app GoToFund7 ];
    }
}

-(void)ShowMenu
{
    [ self.pmenu show];
}

-(void)viewDidAppear:(BOOL)animated
{
    
    [ super viewDidAppear:animated];
    
    [ self performSelector:@selector(ShowMenu) withObject:self afterDelay:3 ];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ( interfaceOrientation == UIInterfaceOrientationLandscapeLeft ) return YES;
	else return NO;
}

@end
