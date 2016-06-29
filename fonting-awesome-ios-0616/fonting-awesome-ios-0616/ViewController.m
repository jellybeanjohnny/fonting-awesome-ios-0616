//
//  ViewController.m
//  fonting-awesome-ios-0616
//
//  Created by Matt Amerige on 6/29/16.
//  Copyright © 2016 Wubbyland. All rights reserved.
//

#import "ViewController.h"
#import <FontAwesomeKit/FontAwesomeKit.h>
#import "CWStatusBarNotification.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *centerButton;
@property (strong, nonatomic) CWStatusBarNotification *notification;

@end

@implementation ViewController

- (CWStatusBarNotification *)notification
{
	if (!_notification) {
		_notification = [CWStatusBarNotification new];
	}
	return _notification;
}

- (void)viewDidLoad
{
	[super viewDidLoad];
	
	FAKZocial *penguin = [FAKZocial plancastIconWithSize:400];
	
	[self.centerButton setAttributedTitle:penguin.attributedString forState:UIControlStateNormal];
	
}

- (IBAction)_penguinButtonDown:(id)sender
{
	[self.notification displayNotificationWithMessage:@"You're pushing the penguin" completion:nil];
}

- (IBAction)_penguinButtonUp:(id)sender
{
	[self.notification dismissNotification];
}

@end
