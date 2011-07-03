//
//  UICurrencyTextFieldViewController.h
//  UICurrencyTextField
//
//  Created by Marcelo Costa on 7/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MMCurrencyTextField.h"
#import "MMCurrencyTextFieldDelegate.h"
#import <UIKit/UIKit.h>

@interface UICurrencyTextFieldViewController :UIViewController <MMCurrencyDelegate> {
    
}
@property(nonatomic, retain)IBOutlet MMCurrencyTextField *textfield;
@property (nonatomic,retain)IBOutlet UILabel *label;

@end


