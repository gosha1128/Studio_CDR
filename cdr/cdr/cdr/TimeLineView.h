//
//  TimeLineView.h
//  cdr
//
//  Created by George Williams on 8/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimeLineView : UIViewController

@property (retain, atomic) IBOutlet UIButton *phase;

-(IBAction) GoToPhase: (id)ctl;

@end
