//
//  SplashView.h
//  cdr
//
//  Created by George Williams on 8/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PMenu.h"

@interface SplashView : UIViewController

@property (nonatomic) BOOL next;


@property (retain, atomic) PMenu *pmenu;



-(void) reset;

@end
