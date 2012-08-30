//
//  ThomasView.h
//  cdr
//
//  Created by George Williams on 8/29/12.
//
//

#import <UIKit/UIKit.h>

#import "MyMovieView.h"
#import "PMenu.h"

@interface ThomasView : UIViewController


@property (retain, atomic) MyMovieView *fmv;

@property (retain, atomic) IBOutlet UIButton *portfolio_button;

@property (retain, atomic) PMenu *pmenu;

-(void) reset;

@end
