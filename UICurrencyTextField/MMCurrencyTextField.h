//
//  MMCurrencyTextField.h
//  MMCurrencyTextField
//
//  Created by Marcelo Costa on 7/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
@class MMCurrencyTextFieldDelegate;

@interface MMCurrencyTextField : UITextField {
    
}
@property (nonatomic, retain)MMCurrencyTextFieldDelegate* defaultDelegate;
@property (nonatomic, assign)double value;

@end
