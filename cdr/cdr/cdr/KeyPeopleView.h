//
//  KeyPeopleView.h
//  cdr
//
//  Created by George Williams on 8/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MyMovieView.h"

#import "PMenu.h"
@interface KeyPeopleView : UIViewController
 
@property (retain, atomic) MyMovieView *fmv;

@property (retain, atomic) IBOutlet UIButton *portfolio_button;

@property (retain, atomic) IBOutlet UIButton *thomas_button;

@property (retain, atomic) PMenu *pmenu;

-(IBAction) GoToPortfolio:(id)obj;
-(IBAction) GoToThomas:(id)obj;

 
-(void) reset;

@end
