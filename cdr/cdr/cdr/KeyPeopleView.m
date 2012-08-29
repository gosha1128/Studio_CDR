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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


-(IBAction) GoToTimeLine:(id)obj
{
    AppDelegate *app = (AppDelegate *)[[ UIApplication sharedApplication] delegate ];
    [ app GoToTimeline ];
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
	if ( interfaceOrientation == UIInterfaceOrientationLandscapeLeft ) return YES;
	else return NO;
}

@end
