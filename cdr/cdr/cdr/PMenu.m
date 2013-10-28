//
//  PMenu.m
//  cdr
//
//  Created by George Williams on 8/29/12.
//
//

#import "PMenu.h"

#import "AppDelegate.h"

@implementation PMenu

@synthesize menubutton=_menubutton;
@synthesize menu=_menu;
@synthesize parent=_parent;
@synthesize btn=_btn;
@synthesize expanded=_expanded;

-(id) init:(UIViewController *)parent :(BOOL)hidden;
{
    self = [ super init];
    
    self.menu = [ [ UIImageView alloc ] initWithImage:[ UIImage imageNamed:@"cdr_menu02" ] ];
    [ self.menu setFrame:CGRectMake(1025, 80, 516, 65) ];
    self.menu.hidden = hidden;
    self.menubutton = [ [ UIImageView alloc ] initWithImage:[ UIImage imageNamed:@"cdr_logo_tr" ] ];
    self.menubutton.hidden = hidden;
    [ self.menubutton setFrame:CGRectMake(893, 59, 162, 108) ];
    
    // main button...
    self.menubutton.userInteractionEnabled = YES;
    
    UIButtonType tp = UIButtonTypeCustom;
    
    self.btn = [ UIButton buttonWithType:tp ];
    [ self.btn addTarget:self action:@selector(toggle:) forControlEvents:UIControlEventTouchUpInside ];
    [ self.btn setFrame:CGRectMake(0, 0, 162, 108) ];
    [ self.menubutton addSubview:self.btn ];
    [ self.menubutton bringSubviewToFront:self.btn ];
    
    // home...
    self.menu.userInteractionEnabled = YES;
    UIButton *btn = [ UIButton buttonWithType:tp ];
    [ btn addTarget:self action:@selector(home:) forControlEvents:UIControlEventTouchUpInside ];
    [ btn setFrame:CGRectMake(0, 0, 100, 65) ];
    [ self.menu addSubview:btn ];
    [ self.menu bringSubviewToFront:btn ];
    
    // portfolio...
    btn = [ UIButton buttonWithType:tp  ];
    [ btn addTarget:self action:@selector(portfolio:) forControlEvents:UIControlEventTouchUpInside ];
    [ btn setFrame:CGRectMake(115, 0, 100, 65) ];
    [ self.menu addSubview:btn ];
    [ self.menu bringSubviewToFront:btn ];
    
    //  investors...
    btn = [ UIButton buttonWithType:tp ];
    [ btn addTarget:self action:@selector(investors:) forControlEvents:UIControlEventTouchUpInside ];
    [ btn setFrame:CGRectMake(230, 0, 100, 65) ];
    [ self.menu addSubview:btn ];
    [ self.menu bringSubviewToFront:btn ];
    
    
    self.parent = parent;
    [ self.parent.view addSubview:self.menu ];
    [ self.parent.view addSubview:self.menubutton ];
    
    [ self.parent.view bringSubviewToFront:self.menu];
    [ self.parent.view bringSubviewToFront:self.menubutton];
    
    [ self collapse:NO ];
    
    
    return self;
}

-(void) show
{
    self.menu.hidden = NO;
    self.menubutton.hidden = NO;
}

-(void) hide
{
    self.menu.hidden = YES;
    self.menubutton.hidden = YES;
}

-(void) toggle:(id)ctl
{
    if ( self.expanded ) [ self collapse:YES ];
    else [ self expand:YES ];
}
                                       
-(void) collapse: (BOOL)anim
{
    self.expanded = NO;
    if (anim)
    {
    [UIView animateWithDuration:0.5 animations:^{
        [ self.menu setFrame:CGRectMake(1025, 80, 516, 65)];
    }];
    }
    else
    {
        [ self.menu setFrame:CGRectMake(1025, 80, 516, 65)];
    }
}


-(void) expand: (BOOL)anim
{
    if (anim)
    {
    [UIView animateWithDuration:0.5 animations:^{
        [ self.menu setFrame:CGRectMake(508, 80, 516, 65)];
    }];
    }
    else
    {
        [ self.menu setFrame:CGRectMake(508, 80, 516, 65)];
    }
    self.expanded = YES;
}

-(void) home: (id)ctl
{
    AppDelegate *app = ( AppDelegate * )[ [ UIApplication sharedApplication ] delegate ];
    [ app GoToHome ];
}


-(void) portfolio: (id)ctl
{
    AppDelegate *app = ( AppDelegate * )[ [ UIApplication sharedApplication ] delegate ];
    [ app GoToPortfolio ];
}


-(void) investors: (id)ctl
{
    AppDelegate *app = ( AppDelegate * )[ [ UIApplication sharedApplication ] delegate ];
    [ app GoToInvestors ];
}

@end
