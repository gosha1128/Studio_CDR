//
//  TimeLineView.h
//  cdr
//
//  Created by George Williams on 8/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MyMovieView.h"

#import "PMenu.h"

@interface TimeLineView : UIViewController <UIScrollViewDelegate>

//@property (retain, atomic) IBOutlet UIButton *phase;

@property (retain, atomic) MyMovieView *fmv2;
@property (retain, atomic) MyMovieView *fmv;

@property (retain, atomic) PMenu *pmenu;

@property (retain, atomic) UIScrollView *sv;

//-(IBAction) GoToPhase: (id)ctl;
//-(IBAction) GoToKeypeople: (id)ctl;


-(void) reset;

@end
