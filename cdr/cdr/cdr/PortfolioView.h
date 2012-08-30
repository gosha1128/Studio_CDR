//
//  PortfolioView.h
//  cdr
//
//  Created by George Williams on 8/29/12.
//
//

#import <UIKit/UIKit.h>


#import "MyMovieView.h"

#import "PMenu.h"

@interface PortfolioView : UIViewController


@property (retain, atomic) MyMovieView *fmv;

@property (retain, atomic) PMenu *pmenu;

@property (retain, atomic) IBOutlet UIButton *keypeople;
 
@property (retain, atomic) IBOutlet UIButton *fund7;

-(IBAction) goto_keypeople: (id)ctl;
-(IBAction) goto_fund7: (id)ctl;

-(void) reset;

@end
