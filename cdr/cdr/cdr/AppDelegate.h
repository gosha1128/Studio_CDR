//
//  AppDelegate.h
//  cdr
//
//  Created by George Williams on 8/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;
@class SplashView;
@class TimeLineView;
@class PhaseView;
@class KeyPeopleView;
@class PortfolioView;
@class InvestorsView;
@class ThomasView;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@property (strong, nonatomic) SplashView *splashController;

@property (strong, nonatomic) TimeLineView *timelineController;

@property (strong, nonatomic) PhaseView *phaseController;

@property (strong, nonatomic) KeyPeopleView *keypeopleController;

@property (strong, nonatomic) PortfolioView *portfolioController;

@property (strong, nonatomic) InvestorsView *investorsController;

@property (strong, nonatomic) ThomasView *thomasController;

@property (nonatomic) BOOL warned;

-(void) GoToFund7;

-(void) GoToKeypeople;

-(void) GoToHome;

-(void) GoToInvestors;

-(void) GoToPortfolio;

-(void) GoToThomas;


@end
