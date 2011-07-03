//
//  MMCurrencyTextField.m
//  MMCurrencyTextField
//
//  Created by Marcelo Costa on 7/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MMCurrencyTextField.h"
#import "MMCurrencyTextFieldDelegate.h"


@implementation MMCurrencyTextField
@synthesize defaultDelegate,value;
-(id)initWithCoder:(NSCoder *)aDecoder{
    
    [super initWithCoder:aDecoder];
    self.value = [NSNumber numberWithDouble:0.0];
    self.defaultDelegate=[MMCurrencyTextFieldDelegate currencyDelegate];
    self.delegate = defaultDelegate;
    self.text = [defaultDelegate numberToString:value];
    defaultDelegate.parentField=self;
    
    return self;
    
}

@end
