//
//  ViewController.h
//  Calculator
//
//  Created by Rewa on 11/02/16.
//  Copyright (c) 2016 Rewa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property NSMutableString *decimalString;
@property (weak, nonatomic) IBOutlet UILabel *display;
@property (weak, nonatomic) IBOutlet UILabel *currOp;
@property (weak, nonatomic) IBOutlet UIButton *add;
@property (weak, nonatomic) IBOutlet UIButton *subtract;
@property (weak, nonatomic) IBOutlet UIButton *multiply;
@property (weak, nonatomic) IBOutlet UIButton *divide;
@property (weak, nonatomic) IBOutlet UIButton *equalTo;
@property (weak, nonatomic) IBOutlet UIButton *one;
@property (weak, nonatomic) IBOutlet UIButton *two;
@property (weak, nonatomic) IBOutlet UIButton *three;
@property (weak, nonatomic) IBOutlet UIButton *four;
@property (weak, nonatomic) IBOutlet UIButton *five;
@property (weak, nonatomic) IBOutlet UIButton *six;
@property (weak, nonatomic) IBOutlet UIButton *seven;
@property (weak, nonatomic) IBOutlet UIButton *eight;
@property (weak, nonatomic) IBOutlet UIButton *nine;
@property (weak, nonatomic) IBOutlet UIButton *zero;
@property (weak, nonatomic) IBOutlet UIButton *decimal;
@property (weak, nonatomic) IBOutlet UIButton *cubeRt;
@property (weak, nonatomic) IBOutlet UIButton *sqr;
@property (weak, nonatomic) IBOutlet UIButton *cubeNum;
@property (weak, nonatomic) IBOutlet UIButton *sqrt;
@property (weak, nonatomic) IBOutlet UIButton *exp;
@property (weak, nonatomic) IBOutlet UIButton *tenthP;
@property (weak, nonatomic) IBOutlet UIButton *log;
@property (weak, nonatomic) IBOutlet UIButton *loge;
@property (weak, nonatomic) IBOutlet UIButton *fact;
@property (weak, nonatomic) IBOutlet UIButton *clear;
@property (weak, nonatomic) IBOutlet UIButton *sine;
@property (weak, nonatomic) IBOutlet UIButton *cosine;
@property (weak, nonatomic) IBOutlet UIButton *tangent;
@property (weak, nonatomic) IBOutlet UIButton *inverse;
@property (weak, nonatomic) IBOutlet UIButton *modulus;
@property (weak, nonatomic) IBOutlet UIButton *plusMinus;
@property (weak, nonatomic) IBOutlet UIButton *back;
@property (weak, nonatomic) IBOutlet UIButton *sinhypo;
@property (weak, nonatomic) IBOutlet UIButton *coshypo;
@property (weak, nonatomic) IBOutlet UIButton *tanhypo;
- (IBAction)sinh:(id)sender;
- (IBAction)cosh:(id)sender;
- (IBAction)tanh:(id)sender;
- (IBAction)backSpace:(id)sender;
- (IBAction)sin:(id)sender;
- (IBAction)cos:(id)sender;
- (IBAction)tan:(id)sender;
- (IBAction)inv:(id)sender;
- (IBAction)changeSign:(id)sender;
- (IBAction)mod:(id)sender;
- (IBAction)clearAll:(id)sender;
- (IBAction)square:(id)sender;
- (IBAction)factorial:(id)sender;
- (IBAction)logarithme:(id)sender;
- (IBAction)logarithm:(id)sender;
- (IBAction)exponential:(id)sender;
- (IBAction)tenthPower:(id)sender;
- (IBAction)cube:(id)sender;
- (IBAction)squareRoot:(id)sender;
- (IBAction)addDecimal:(id)sender;
- (IBAction)cubeRoot:(id)sender;
- (IBAction)addOp:(id)sender;
- (IBAction)subOp:(id)sender;
- (IBAction)multOp:(id)sender;
- (IBAction)compute:(id)sender;
- (IBAction)select1:(id)sender;
- (IBAction)select2:(id)sender;
- (IBAction)select3:(id)sender;
- (IBAction)select4:(id)sender;
- (IBAction)select5:(id)sender;
- (IBAction)select6:(id)sender;
- (IBAction)select7:(id)sender;
- (IBAction)select8:(id)sender;
- (IBAction)select9:(id)sender;
- (IBAction)select0:(id)sender;
- (IBAction)divOp:(id)sender;
@end

