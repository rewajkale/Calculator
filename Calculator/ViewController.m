//
//  ViewController.m
//  Calculator
//
//  Created by Rewa on 11/02/16.
//  Copyright (c) 2016 Rewa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    double op1,op2,currDigit;
    NSString *op;
    BOOL setDecimal;
}
@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.display.text=@"0";
    self.currOp.text=@"0";
    setDecimal=0;
    op1=0, op2=0;
    op=@"";
    self.decimalString=[@"0." mutableCopy];
    currDigit=0;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sinh:(id)sender {
    setDecimal=0;
    [self.decimalString setString:@"0."];
    if (![op isEqualToString:@""]) {
        [self compute:(id)sender];
    }
    op=@"sinh";
    if (round(op1)==op1) {
        self.currOp.text=[NSString stringWithFormat:@"%@(%0.0f)",op,op1];
    }
    else
        self.currOp.text=[NSString stringWithFormat:@"%@(%0.4f)",op,op1];
    op1=(op1*M_PI/180);
    op1=sinh(op1);
    if (round(op1)==op1) {
        self.display.text=[NSString stringWithFormat:@"%0.0f",op1];
    }
    else
        self.display.text=[NSString stringWithFormat:@"%0.6f",op1];
    op=@"";
    op2=0;
}

- (IBAction)cosh:(id)sender {
    setDecimal=0;
    [self.decimalString setString:@"0."];
    if (![op isEqualToString:@""]) {
        [self compute:(id)sender];
    }
    op=@"cosh";
    if (round(op1)==op1) {
        self.currOp.text=[NSString stringWithFormat:@"%@(%0.0f)",op,op1];
    }
    else
        self.currOp.text=[NSString stringWithFormat:@"%@(%0.4f)",op,op1];
    op1=(op1*M_PI/180);
    op1=cosh(op1);
    if (round(op1)==op1) {
        self.display.text=[NSString stringWithFormat:@"%0.0f",op1];
    }
    else
        self.display.text=[NSString stringWithFormat:@"%0.6f",op1];
    op=@"";
    op2=0;
}

- (IBAction)tanh:(id)sender {
    setDecimal=0;
    [self.decimalString setString:@"0."];
    if (![op isEqualToString:@""]) {
        [self compute:(id)sender];
    }
    op=@"tanh";
    if (round(op1)==op1) {
        self.currOp.text=[NSString stringWithFormat:@"%@(%0.0f)",op,op1];
    }
    else
        self.currOp.text=[NSString stringWithFormat:@"%@(%0.4f)",op,op1];
    op1=(op1*M_PI/180);
    op1=tanh(op1);
    if (round(op1)==op1) {
        self.display.text=[NSString stringWithFormat:@"%0.0f",op1];
    }
    else
        self.display.text=[NSString stringWithFormat:@"%0.6f",op1];
    op=@"";
    op2=0;
}

- (IBAction)backSpace:(id)sender {
    if ([op isEqualToString:@""]) {
        if(setDecimal==0)
            op1=(int)op1/10;
        else
        {
            if ([self.decimalString length]>0 ) {
                [self.decimalString deleteCharactersInRange:NSMakeRange([self.decimalString length]-1, 1)];
                op1=(int)op1+[self.decimalString floatValue];
            }
            else
            {
                op1=0;
            }
        }
        if (round(op1)==op1) {
            self.currOp.text=[NSString stringWithFormat:@"%0.0f",op1];
        }
        else
            self.currOp.text=[NSString stringWithFormat:@"%0.4f",op1];
    }
    else
    {
        if(setDecimal==0)
            op2=(int)op2/10;
        else
        {
            if ([self.decimalString length]>0 ) {
                [self.decimalString deleteCharactersInRange:NSMakeRange([self.decimalString length]-1, 1)];
                op2=(int)op2+[self.decimalString floatValue];
            }
            else
            {
                op2=0;
            }
        }
        if ((round(op1)==op1)&&(round(op2)==op2)) {
            self.currOp.text=[NSString stringWithFormat: @"(%0.0f)%@(%0.0f)",op1,op,op2];
        }
        else
            self.currOp.text=[NSString stringWithFormat: @"(%0.4f)%@(%0.4f)",op1,op,op2];
    }
}

- (IBAction)sin:(id)sender {
    setDecimal=0;
    [self.decimalString setString:@"0."];
    if (![op isEqualToString:@""]) {
        [self compute:(id)sender];
    }
    op=@"sin";
    if (round(op1)==op1) {
        self.currOp.text=[NSString stringWithFormat:@"%@(%0.0f)",op,op1];
    }
    else
        self.currOp.text=[NSString stringWithFormat:@"%@(%0.4f)",op,op1];
    op1=(op1*M_PI/180);
    op1=sin(op1);
    if (round(op1)==op1) {
        self.display.text=[NSString stringWithFormat:@"%0.0f",op1];
    }
    else
        self.display.text=[NSString stringWithFormat:@"%0.6f",op1];
    op=@"";
    op2=0;
}

- (IBAction)cos:(id)sender {
    setDecimal=0;
    [self.decimalString setString:@"0."];
    if (![op isEqualToString:@""]) {
        [self compute:(id)sender];
    }
    op=@"cos";
    if (round(op1)==op1) {
        self.currOp.text=[NSString stringWithFormat:@"%@(%0.0f)",op,op1];
    }
    else
        self.currOp.text=[NSString stringWithFormat:@"%@(%0.4f)",op,op1];
    op1=(op1*M_PI/180);
    op1=cos(op1);
    if (round(op1)==op1) {
        self.display.text=[NSString stringWithFormat:@"%0.0f",op1];
    }
    else
        self.display.text=[NSString stringWithFormat:@"%0.6f",op1];
    op=@"";
    op2=0;
}

- (IBAction)tan:(id)sender {
    setDecimal=0;
    [self.decimalString setString:@"0."];
    if (![op isEqualToString:@""]) {
        [self compute:(id)sender];
    }
    op=@"tan";
    if (round(op1)==op1) {
        self.currOp.text=[NSString stringWithFormat:@"%@(%0.0f)",op,op1];
    }
    else
        self.currOp.text=[NSString stringWithFormat:@"%@(%0.4f)",op,op1];
    op1=(op1*M_PI/180);
    op1=tan(op1);
    if (round(op1)==op1) {
        self.display.text=[NSString stringWithFormat:@"%0.0f",op1];
    }
    else
        self.display.text=[NSString stringWithFormat:@"%0.6f",op1];
    op=@"";
    op2=0;
}

- (IBAction)inv:(id)sender {
    setDecimal=0;
    [self.decimalString setString:@"0."];
    if (![op isEqualToString:@""]) {
        [self compute:(id)sender];
    }
    op=@"1/";
    if (round(op1)==op1) {
        self.currOp.text=[NSString stringWithFormat:@"%@(%0.0f)",op,op1];
    }
    else
        self.currOp.text=[NSString stringWithFormat:@"%@(%0.4f)",op,op1];
    op1=1/(op1);
    if (round(op1)==op1) {
        self.display.text=[NSString stringWithFormat:@"%0.0f",op1];
    }
    else
        self.display.text=[NSString stringWithFormat:@"%0.6f",op1];
    op=@"";
    op2=0;
}

- (IBAction)changeSign:(id)sender {
    setDecimal=0;
    [self.decimalString setString:@"0."];
    if (![op isEqualToString:@""]) {
        [self compute:(id)sender];
    }
    op=@"-";
    if (round(op1)==op1) {
        self.currOp.text=[NSString stringWithFormat:@"%@(%0.0f)",op,op1];
    }
    else
        self.currOp.text=[NSString stringWithFormat:@"%@(%0.4f)",op,op1];
    op1=-(op1);
    if (round(op1)==op1) {
        self.display.text=[NSString stringWithFormat:@"%0.0f",op1];
    }
    else
        self.display.text=[NSString stringWithFormat:@"%0.6f",op1];
    op=@"";
    op2=0;
}

- (IBAction)mod:(id)sender {
    setDecimal=0;
    [self.decimalString setString:@"0."];
    if (![op isEqualToString:@""]) {
        [self compute:(id)sender];
    }
    op=@"mod";
    if (round(op1)==op1) {
        self.currOp.text=[NSString stringWithFormat:@"%@(%0.0f)",op,op1];
    }
    else
        self.currOp.text=[NSString stringWithFormat:@"%@(%0.4f)",op,op1];
    op1=fabs(op1);
    if (round(op1)==op1) {
        self.display.text=[NSString stringWithFormat:@"%0.0f",op1];
    }
    else
        self.display.text=[NSString stringWithFormat:@"%0.6f",op1];
    op=@"";
    op2=0;

}

- (IBAction)clearAll:(id)sender {
    op1=0;
    op2=0;
    op=@"";
    self.display.text=@"0";
    self.currOp.text=@"0";
}

- (IBAction)square:(id)sender {
    setDecimal=0;
    [self.decimalString setString:@"0."];
    if (![op isEqualToString:@""]) {
        [self compute:(id)sender];
    }
    op=@"^";
    if (round(op1)==op1) {
        self.currOp.text=[NSString stringWithFormat:@"(%0.0f)%@2",op1,op];
    }
    else
        self.currOp.text=[NSString stringWithFormat:@"(%0.4f)%@2",op1,op];
    op1=pow(op1, 2);
    if (round(op1)==op1) {
        self.display.text=[NSString stringWithFormat:@"%0.0f",op1];
    }
    else
        self.display.text=[NSString stringWithFormat:@"%0.6f",op1];
    op=@"";
    op2=0;
}

- (IBAction)factorial:(id)sender {
    setDecimal=0;
    [self.decimalString setString:@"0."];
    if (![op isEqualToString:@""]) {
        [self compute:(id)sender];
    }
    
    op=@"!";
    if (round(op1)==op1) {
        self.currOp.text=[NSString stringWithFormat:@"(%0.0f)%@",op1,op];
    }
    else
        self.currOp.text=[NSString stringWithFormat:@"(%0.4f)%@",op1,op];
    op1=tgamma(++op1);
    if (round(op1)==op1) {
        self.display.text=[NSString stringWithFormat:@"%0.0f",op1];
    }
    else
        self.display.text=[NSString stringWithFormat:@"%0.6f",op1];
    op=@"";
    op2=0;
}

- (IBAction)logarithme:(id)sender {
    setDecimal=0;
    [self.decimalString setString:@"0."];
    if (![op isEqualToString:@""]) {
        [self compute:(id)sender];
    }
    
    op=@"log";
    if (round(op1)==op1) {
        self.currOp.text=[NSString stringWithFormat:@"%@(%0.0f)",op,op1];
    }
    else
        self.currOp.text=[NSString stringWithFormat:@"%@(%0.4f)",op,op1];
    op1=log(op1);
    if (round(op1)==op1) {
        self.display.text=[NSString stringWithFormat:@"%0.0f",op1];
    }
    else
        self.display.text=[NSString stringWithFormat:@"%0.6f",op1];
    op=@"";
    op2=0;
    }

- (IBAction)logarithm:(id)sender {
    setDecimal=0;
    [self.decimalString setString:@"0."];
    if (![op isEqualToString:@""]) {
        [self compute:(id)sender];
    }
    
    op=@"log10";
    if (round(op1)==op1) {
        self.currOp.text=[NSString stringWithFormat:@"%@(%0.0f)",op,op1];
    }
    else
        self.currOp.text=[NSString stringWithFormat:@"%@(%0.4f)",op,op1];
    op1=log10(op1);
    if (round(op1)==op1) {
        self.display.text=[NSString stringWithFormat:@"%0.0f",op1];
    }
    else
        self.display.text=[NSString stringWithFormat:@"%0.6f",op1];
    op=@"";
    op2=0;
}

- (IBAction)exponential:(id)sender {
    setDecimal=0;
    [self.decimalString setString:@"0."];
    if (![op isEqualToString:@""]) {
        [self compute:(id)sender];
    }
    
    op=@"e^";
    if (round(op1)==op1) {
        self.currOp.text=[NSString stringWithFormat:@"%@(%0.0f)",op,op1];
    }
    else
        self.currOp.text=[NSString stringWithFormat:@"%@(%0.4f)",op,op1];
    op1=exp(op1);
    if (round(op1)==op1) {
        self.display.text=[NSString stringWithFormat:@"%0.0f",op1];
    }
    else
        self.display.text=[NSString stringWithFormat:@"%0.6f",op1];
    op=@"";
    op2=0;
}

- (IBAction)tenthPower:(id)sender {
    setDecimal=0;
    [self.decimalString setString:@"0."];
    if (![op isEqualToString:@""]) {
        [self compute:(id)sender];
    }
    
    op=@"10^";
    if (round(op1)==op1) {
        self.currOp.text=[NSString stringWithFormat:@"%@(%0.0f)",op,op1];
    }
    else
        self.currOp.text=[NSString stringWithFormat:@"%@(%0.4f)",op,op1];
    op1=pow(10, op1);
    if (round(op1)==op1) {
        self.display.text=[NSString stringWithFormat:@"%0.0f",op1];
    }
    else
        self.display.text=[NSString stringWithFormat:@"%0.6f",op1];
    op=@"";

}

- (IBAction)cube:(id)sender {
    setDecimal=0;
    [self.decimalString setString:@"0."];
    if (![op isEqualToString:@""]) {
        [self compute:(id)sender];
    }
    
    op=@"^";
    if (round(op1)==op1) {
        self.currOp.text=[NSString stringWithFormat:@"(%0.0f)%@3",op1,op];
    }
    else
        self.currOp.text=[NSString stringWithFormat:@"(%0.4f)%@3",op1,op];
    op1=pow(op1, 3);
    if (round(op1)==op1) {
        self.display.text=[NSString stringWithFormat:@"%0.0f",op1];
    }
    else
        self.display.text=[NSString stringWithFormat:@"%0.6f",op1];
    op=@"";
    op2=0;
}

- (IBAction)squareRoot:(id)sender {
    setDecimal=0;
    [self.decimalString setString:@"0."];
    if (![op isEqualToString:@""]) {
        [self compute:(id)sender];
    }
    
    op=@"^";
    if (round(op1)==op1) {
        self.currOp.text=[NSString stringWithFormat:@"(%0.0f)%@(1/2)",op1,op];
    }
    else
        self.currOp.text=[NSString stringWithFormat:@"(%0.4f)%@(1/2)",op1,op];
    op1=pow(op1, 1.0/2);
    if (round(op1)==op1) {
        self.display.text=[NSString stringWithFormat:@"%0.0f",op1];
    }
    else
        self.display.text=[NSString stringWithFormat:@"%0.6f",op1];
    op=@"";
    op2=0;
}

- (IBAction)cubeRoot:(id)sender {
    setDecimal=0;
    [self.decimalString setString:@"0."];
    if (![op isEqualToString:@""]) {
        [self compute:(id)sender];
    }
    
    op=@"^";
    if (round(op1)==op1) {
        self.currOp.text=[NSString stringWithFormat:@"(%0.0f)%@(1/3)",op1,op];
    }
    else
        self.currOp.text=[NSString stringWithFormat:@"(%0.4f)%@(1/3)",op1,op];
    op1=pow(op1, 1.0/3);
    if (round(op1)==op1) {
        self.display.text=[NSString stringWithFormat:@"%0.0f",op1];
    }
    else
        self.display.text=[NSString stringWithFormat:@"%0.6f",op1];
    op=@"";
    op2=0;
}

- (IBAction)addDecimal:(id)sender {
    setDecimal=1;
    
}


- (IBAction)addOp:(id)sender {
    setDecimal=0;
    [self.decimalString setString:@"0."];
    if(!([op isEqualToString:@""]||[op isEqualToString:@"="])) {
        [self compute:(id)sender];
    }
    op=@"+";
    if (round(op1)==op1) {
        self.currOp.text=[NSString stringWithFormat:@"(%0.0f)%@",op1,op];
    }
    else
        self.currOp.text=[NSString stringWithFormat:@"(%0.4f)%@",op1,op];
}

- (IBAction)subOp:(id)sender {
    setDecimal=0;
    [self.decimalString setString:@"0."];
    if(!([op isEqualToString:@""]||[op isEqualToString:@"="])) {
        [self compute:(id)sender];
    }
    op=@"-";
    if (round(op1)==op1) {
        self.currOp.text=[NSString stringWithFormat:@"(%0.0f)%@",op1,op];
    }
    else
        self.currOp.text=[NSString stringWithFormat:@"(%0.4f)%@",op1,op];
}

- (IBAction)multOp:(id)sender {
    setDecimal=0;
    [self.decimalString setString:@"0."];
    if(!([op isEqualToString:@""]||[op isEqualToString:@"="])) {
        [self compute:(id)sender];
    }
    op=@"*";
    if (round(op1)==op1) {
        self.currOp.text=[NSString stringWithFormat:@"(%0.0f)%@",op1,op];
    }
    else
        self.currOp.text=[NSString stringWithFormat:@"(%0.4f)%@",op1,op];
}

- (IBAction)divOp:(id)sender {
    setDecimal=0;
    [self.decimalString setString:@"0."];
    if(![op isEqualToString:@""]) {
        [self compute:(id)sender];
    }
    op=@"/";
    if (round(op1)==op1) {
        self.currOp.text=[NSString stringWithFormat:@"(%0.0f)%@",op1,op];
    }
    else
        self.currOp.text=[NSString stringWithFormat:@"(%0.4f)%@",op1,op];
}

- (IBAction)compute:(id)sender {
    setDecimal=0;
    [self.decimalString setString:@"0."];
    if ((round(op1)==op1)&&(round(op2)==op2)) {
        self.currOp.text=[NSString stringWithFormat: @"(%0.0f)%@(%0.0f)",op1,op,op2];
    }
    else
        self.currOp.text=[NSString stringWithFormat: @"(%0.4f)%@(%0.4f)",op1,op,op2];
    if([op isEqualToString:@"+"])
        op1=op1+op2;
    else if([op isEqualToString:@"-"])
            op1=op1-op2;
    else if([op isEqualToString:@"*"])
        op1=op1*op2;
    else if([op isEqualToString:@"/"])
        op1=op1/op2;
    else
        self.currOp.text=[NSString stringWithFormat: @""];
    if (round(op1)==op1) {
        self.display.text=[NSString stringWithFormat:@"%0.0f",op1];
    }
    else
        self.display.text=[NSString stringWithFormat:@"%0.6f",op1];
    op=@"=";
    op2=0;
}

- (IBAction)select1:(id)sender {
    currDigit=1;
    if([op isEqualToString:@"="])
    {
        op1=0;
        op=@"";
        self.display.text=@"0";
    }
    if([op isEqualToString:@""])
    {
        if (setDecimal==1) {
            [self.decimalString appendString:@"1"];
            op1=(int)op1+[self.decimalString floatValue];
        }
        else
            op1=op1*10+1;
        if (round(op1)==op1) {
            self.currOp.text=[NSString stringWithFormat:@"%0.0f",op1];
        }
        else
            self.currOp.text=[NSString stringWithFormat:@"%0.4f",op1];
    }
    else
    {
        if (setDecimal==1) {
            [self.decimalString appendString:@"1"];
            op2=(int)op2+[self.decimalString floatValue];
        }
        else
            op2=op2*10+1;
        if ((round(op1)==op1)&&(round(op2)==op2)) {
            self.currOp.text=[NSString stringWithFormat: @"(%0.0f)%@(%0.0f)",op1,op,op2];
        }
        else
            self.currOp.text=[NSString stringWithFormat: @"(%0.4f)%@(%0.4f)",op1,op,op2];
    }
    
}

- (IBAction)select2:(id)sender {
    currDigit=2;
    if([op isEqualToString:@"="])
    {
        op1=0;
        op=@"";
        self.display.text=@"0";
    }
    if([op isEqualToString:@""])
    {
        if (setDecimal==1) {
            [self.decimalString appendString:@"2"];
            op1=(int)op1+[self.decimalString floatValue];
        }
        else
            op1=op1*10+2;
        if (round(op1)==op1) {
            self.currOp.text=[NSString stringWithFormat:@"%0.0f",op1];
        }
        else
            self.currOp.text=[NSString stringWithFormat:@"%0.4f",op1];
    }
    else
    {
        if (setDecimal==1) {
            [self.decimalString appendString:@"2"];
            op2=(int)op2+[self.decimalString floatValue];
        }
        else
            op2=op2*10+2;
        if ((round(op1)==op1)&&(round(op2)==op2)) {
            self.currOp.text=[NSString stringWithFormat: @"(%0.0f)%@(%0.0f)",op1,op,op2];
        }
        else
            self.currOp.text=[NSString stringWithFormat: @"(%0.4f)%@(%0.4f)",op1,op,op2];
    }
}

- (IBAction)select3:(id)sender {
    currDigit=3;
    if([op isEqualToString:@"="])
    {
        op1=0;
        op=@"";
        self.display.text=@"0";
    }
    if([op isEqualToString:@""])
    {
        if (setDecimal==1) {
            [self.decimalString appendString:@"3"];
            op1=(int)op1+[self.decimalString floatValue];
        }
        else
            op1=op1*10+3;
        if (round(op1)==op1) {
            self.currOp.text=[NSString stringWithFormat:@"%0.0f",op1];
        }
        else
            self.currOp.text=[NSString stringWithFormat:@"%0.4f",op1];
    }
    else
    {
        if (setDecimal==1) {
            [self.decimalString appendString:@"3"];
            op2=(int)op2+[self.decimalString floatValue];
        }
        else
            op2=op2*10+3;
        if ((round(op1)==op1)&&(round(op2)==op2)) {
            self.currOp.text=[NSString stringWithFormat: @"(%0.0f)%@(%0.0f)",op1,op,op2];
        }
        else
            self.currOp.text=[NSString stringWithFormat: @"(%0.4f)%@(%0.4f)",op1,op,op2];
    }
}

- (IBAction)select4:(id)sender {
    currDigit=4;
    if([op isEqualToString:@"="])
    {
        op1=0;
        op=@"";
        self.display.text=@"0";
    }
    if([op isEqualToString:@""])
    {
        if (setDecimal==1) {
            [self.decimalString appendString:@"4"];
            op1=(int)op1+[self.decimalString floatValue];
        }
        else
            op1=op1*10+4;
        if (round(op1)==op1) {
            self.currOp.text=[NSString stringWithFormat:@"%0.0f",op1];
        }
        else
            self.currOp.text=[NSString stringWithFormat:@"%0.4f",op1];
    }
    else
    {
        if (setDecimal==1) {
            [self.decimalString appendString:@"4"];
            op2=(int)op2+[self.decimalString floatValue];
        }
        else
            op2=op2*10+4;
        if ((round(op1)==op1)&&(round(op2)==op2)) {
            self.currOp.text=[NSString stringWithFormat: @"(%0.0f)%@(%0.0f)",op1,op,op2];
        }
        else
            self.currOp.text=[NSString stringWithFormat: @"(%0.4f)%@(%0.4f)",op1,op,op2];
    }
}

- (IBAction)select5:(id)sender {
    currDigit=5;
    if([op isEqualToString:@"="])
    {
        op1=0;
        op=@"";
        self.display.text=@"0";
    }
    if([op isEqualToString:@""])
    {
        if (setDecimal==1) {
            [self.decimalString appendString:@"5"];
            op1=(int)op1+[self.decimalString floatValue];
        }
        else
            op1=op1*10+5;
        if (round(op1)==op1) {
            self.currOp.text=[NSString stringWithFormat:@"%0.0f",op1];
        }
        else
            self.currOp.text=[NSString stringWithFormat:@"%0.4f",op1];
    }
    else
    {
        if (setDecimal==1) {
            [self.decimalString appendString:@"5"];
            op2=(int)op2+[self.decimalString floatValue];
        }
        else
            op2=op2*10+5;
        if ((round(op1)==op1)&&(round(op2)==op2)) {
            self.currOp.text=[NSString stringWithFormat: @"(%0.0f)%@(%0.0f)",op1,op,op2];
        }
        else
            self.currOp.text=[NSString stringWithFormat: @"(%0.4f)%@(%0.4f)",op1,op,op2];
    }
}

- (IBAction)select6:(id)sender {
    currDigit=6;
    if([op isEqualToString:@"="])
    {
        op1=0;
        op=@"";
        self.display.text=@"0";
    }
    if([op isEqualToString:@""])
    {
        if (setDecimal==1) {
            [self.decimalString appendString:@"6"];
            op1=(int)op1+[self.decimalString floatValue];
        }
        else
            op1=op1*10+6;
        if (round(op1)==op1) {
            self.currOp.text=[NSString stringWithFormat:@"%0.0f",op1];
        }
        else
            self.currOp.text=[NSString stringWithFormat:@"%0.4f",op1];
    }
    else
    {
        if (setDecimal==1) {
            [self.decimalString appendString:@"6"];
            op2=(int)op2+[self.decimalString floatValue];
        }
        else
            op2=op2*10+6;
        if ((round(op1)==op1)&&(round(op2)==op2)) {
            self.currOp.text=[NSString stringWithFormat: @"(%0.0f)%@(%0.0f)",op1,op,op2];
        }
        else
            self.currOp.text=[NSString stringWithFormat: @"(%0.4f)%@(%0.4f)",op1,op,op2];
    }
}

- (IBAction)select7:(id)sender {
    currDigit=7;
    if([op isEqualToString:@"="])
    {
        op1=0;
        op=@"";
        self.display.text=@"0";
    }
    if([op isEqualToString:@""])
    {
        if (setDecimal==1) {
            [self.decimalString appendString:@"7"];
            op1=(int)op1+[self.decimalString floatValue];
        }
        else
            op1=op1*10+7;
        if (round(op1)==op1) {
            self.currOp.text=[NSString stringWithFormat:@"%0.0f",op1];
        }
        else
            self.currOp.text=[NSString stringWithFormat:@"%0.4f",op1];
    }
    else
    {
        if (setDecimal==1) {
            [self.decimalString appendString:@"7"];
            op2=(int)op2+[self.decimalString floatValue];
        }
        else
            op2=op2*10+7;
        if ((round(op1)==op1)&&(round(op2)==op2)) {
            self.currOp.text=[NSString stringWithFormat: @"(%0.0f)%@(%0.0f)",op1,op,op2];
        }
        else
            self.currOp.text=[NSString stringWithFormat: @"(%0.4f)%@(%0.4f)",op1,op,op2];
    }
}

- (IBAction)select8:(id)sender {
    currDigit=8;
    if([op isEqualToString:@"="])
    {
        op1=0;
        op=@"";
        self.display.text=@"0";
    }
    if([op isEqualToString:@""])
    {
        if (setDecimal==1) {
            [self.decimalString appendString:@"8"];
            op1=(int)op1+[self.decimalString floatValue];
        }
        else
            op1=op1*10+8;
        if (round(op1)==op1) {
            self.currOp.text=[NSString stringWithFormat:@"%0.0f",op1];
        }
        else
            self.currOp.text=[NSString stringWithFormat:@"%0.4f",op1];
    }
    else
    {
        if (setDecimal==1) {
            [self.decimalString appendString:@"8"];
            op2=(int)op2+[self.decimalString floatValue];
        }
        else
            op2=op2*10+8;
        if ((round(op1)==op1)&&(round(op2)==op2)) {
            self.currOp.text=[NSString stringWithFormat: @"(%0.0f)%@(%0.0f)",op1,op,op2];
        }
        else
            self.currOp.text=[NSString stringWithFormat: @"(%0.4f)%@(%0.4f)",op1,op,op2];
    }
}

- (IBAction)select9:(id)sender {
    currDigit=9;
    if([op isEqualToString:@"="])
    {
        op1=0;
        op=@"";
        self.display.text=@"0";
    }
    if([op isEqualToString:@""])
    {
        if (setDecimal==1) {
            [self.decimalString appendString:@"9"];
            op1=(int)op1+[self.decimalString floatValue];
        }
        else
            op1=op1*10+9;
        if (round(op1)==op1) {
            self.currOp.text=[NSString stringWithFormat:@"%0.0f",op1];
        }
        else
            self.currOp.text=[NSString stringWithFormat:@"%0.4f",op1];
    }
    else
    {
        if (setDecimal==1) {
            [self.decimalString appendString:@"9"];
            op2=(int)op2+[self.decimalString floatValue];
        }
        else
            op2=op2*10+9;
        if ((round(op1)==op1)&&(round(op2)==op2)) {
            self.currOp.text=[NSString stringWithFormat: @"(%0.0f)%@(%0.0f)",op1,op,op2];
        }
        else
            self.currOp.text=[NSString stringWithFormat: @"(%0.4f)%@(%0.4f)",op1,op,op2];
    }
}

- (IBAction)select0:(id)sender {
    currDigit=0;
    if([op isEqualToString:@"="])
    {
        op1=0;
        op=@"";
        self.display.text=@"0";
    }
    if([op isEqualToString:@""])
    {
        if (setDecimal==1) {
            [self.decimalString appendString:@"0"];
            op1=(int)op1+[self.decimalString floatValue];
        }
        else
            op1=op1*10+0;
        if (round(op1)==op1) {
            self.currOp.text=[NSString stringWithFormat:@"%0.0f",op1];
        }
        else
            self.currOp.text=[NSString stringWithFormat:@"%0.4f",op1];
    }
    else
    {
        if (setDecimal==1) {
            [self.decimalString appendString:@"0"];
            op2=(int)op2+[self.decimalString floatValue];
        }
        else
            op2=op2*10+0;
        if ((round(op1)==op1)&&(round(op2)==op2)) {
            self.currOp.text=[NSString stringWithFormat: @"(%0.0f)%@(%0.0f)",op1,op,op2];
        }
        else
            self.currOp.text=[NSString stringWithFormat: @"(%0.4f)%@(%0.4f)",op1,op,op2];
    }
}


@end
