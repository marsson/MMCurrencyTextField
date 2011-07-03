//
//  UICurrencyTextFieldAppDelegate.h
//  UICurrencyTextField
//
//  Created by Marcelo Costa on 7/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UICurrencyTextFieldViewController;

@interface UICurrencyTextFieldAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UICurrencyTextFieldViewController *viewController;

@end
