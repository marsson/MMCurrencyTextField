//
//  MMCurrencyTextFieldDelegate.m
//  MMCurrencyTextField
//
//  Created by Marcelo Costa on 5/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MMCurrencyTextFieldDelegate.h"
#import "MMCurrencyTextField.h"


@implementation MMCurrencyTextFieldDelegate
@synthesize currencyFormatter,parentField,delegate;

-(id)init{
    currencyFormatter = [[NSNumberFormatter alloc] init]; 
    [currencyFormatter setFormatterBehavior:NSNumberFormatterBehavior10_4];
    [currencyFormatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    [currencyFormatter setLocale:[NSLocale currentLocale]];
    [currencyFormatter setMaximum:nil];
        
    return self;
}

+(id)currencyDelegate{
    return [[[MMCurrencyTextFieldDelegate alloc]init]autorelease];
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
  //  double max=1234567809012345678901234567890.0;
   // NSLog(@"Double=%f",max);
       if (([string intValue]==0 && ![string isEqualToString:@"0"] )&& ![string isEqualToString:@""] ) {
        NSLog(@"É LETRA!!!!!");
        return NO;
    }
        NSString *cleanCentString = [[textField.text
                                      componentsSeparatedByCharactersInSet:
                                     [[NSCharacterSet decimalDigitCharacterSet] invertedSet]]
                                    componentsJoinedByString:@""];
    NSLog(@"CleanCentString=%@",cleanCentString);
        //Checa o valor do inteiro resultante:
        double centAmount = [cleanCentString doubleValue]  ;
        // checa o input
        if (string.length > 0)
        {
            // Digito adicionado;
            centAmount = centAmount * 10 + [string doubleValue] ;
            NSLog(@"CentAmount=%g", centAmount);
        }
        else
        {
            // Digito removido
            centAmount = centAmount / 10 ;        
            parentField.value = [NSNumber numberWithDouble:(double)centAmount/pow(10,[currencyFormatter maximumFractionDigits])];
            textField.text = [currencyFormatter stringFromNumber:parentField.value];
            [self.delegate didChangeVaule:parentField.value];
            return NO;
           
        }
    //Faz a string
    NSLog(@"cleanCentStringVale:%@",cleanCentString);
    NSLog(@"maxchars=%d tamanho string=%d", MAXCHARS, [cleanCentString length]);
    if ([cleanCentString length]  >=MAXCHARS)
    {
        NSLog(@"Maximo atingido");
        [self.delegate didGetToLimit];
        return NO;
    }
    
    cleanCentString =[NSMutableString stringWithFormat:@"%g",centAmount];
    parentField.value = [ NSNumber numberWithDouble:(double)centAmount/pow(10,[currencyFormatter maximumFractionDigits])];

       textField.text = [currencyFormatter stringFromNumber:parentField.value];
    [self.delegate didChangeVaule:parentField.value];
        
      
        return NO;
    
}

    
    
    -(NSString*)numberToString:(NSNumber*)number{
    
    return [currencyFormatter stringFromNumber:number];
    
}

//Delegate para sumir com o teclado...
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
	[textField resignFirstResponder];
    
	return YES;
    
}



@end
