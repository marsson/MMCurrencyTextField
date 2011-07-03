//
//  MMCurrencyTextFieldDelegate.h
//  MMCurrencyTextField
//
//  Created by Marcelo Costa on 5/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MMCurrencyTextField.h"
#define MAXCHARS 15
@protocol MMCurrencyDelegate

-(void)didChangeVaule:(NSNumber*)value;
-(void)didGetToLimit;

@end


@interface MMCurrencyTextFieldDelegate : NSObject <UITextFieldDelegate>{
    NSNumberFormatter* currencyFormatter;
}

//@property (nonatomic, retain) NSNumber* value;
@property (nonatomic, retain) NSNumberFormatter* currencyFormatter;
@property (nonatomic, assign) MMCurrencyTextField* parentField;
@property (nonatomic, assign) id<MMCurrencyDelegate>delegate;

-(NSString*)numberToString:(NSNumber*)number;
+(id)currencyDelegate;
@end
