//
//  PMenu.h
//  cdr
//
//  Created by George Williams on 8/29/12.
//
//

#import <Foundation/Foundation.h>

@interface PMenu : NSObject

@property (retain, atomic) IBOutlet UIImageView *menu;
@property (retain, atomic) IBOutlet UIImageView *menubutton;
@property (retain, atomic) UIViewController *parent;
@property (retain, atomic) UIButton *btn;
@property (nonatomic) BOOL expanded;

-(id) init:(UIViewController *)parent :(BOOL)vis;


-(void) show;

-(void) hide;


-(void) expand: (BOOL)anim;


-(void) collapse: (BOOL)anim;

@end
