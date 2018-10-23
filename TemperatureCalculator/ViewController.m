//
//  ViewController.m
//  TemperatureCalculator
//
//  Created by Mir M. Ahmed on 10/21/18.
//  Copyright © 2018 Mir M. Ahmed. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)calculate:(id)sender {
    
    // convert from F to C
    if(self.segControl.selectedSegmentIndex == 0) {
        // we put in brackets because the info we need is going to be
        // a string. We need to convert it to a double.
        double fahrenheit = [self.textField.text doubleValue];
        double celsius = (fahrenheit - 32) / 1.8;
        
        self.outputLabel.text = [NSString stringWithFormat:@"%3.2f Celsius", celsius];
        
        if(celsius > 120) {
            self.imageView.image = [UIImage imageNamed:@"Temp9.png"];
        }
        
        else if(celsius > 100) {
            self.imageView.image = [UIImage imageNamed:@"Temp8.png"];
        }
        
        else if(celsius > 80) {
            self.imageView.image = [UIImage imageNamed:@"Temp7.png"];
        }
        
        else if(celsius > 60) {
            self.imageView.image = [UIImage imageNamed:@"Temp6.png"];
        }
        
        else if(celsius > 40) {
            self.imageView.image = [UIImage imageNamed:@"Temp5.png"];
        }
        
        else if(celsius > 20) {
            self.imageView.image = [UIImage imageNamed:@"Temp4.png"];
        }
        
        else if(celsius > 0) {
            self.imageView.image = [UIImage imageNamed:@"Temp3.png"];
        }
        
        else if(celsius > -20) {
            self.imageView.image = [UIImage imageNamed:@"Temp2.png"];
        }
        
        else if(celsius < -20) {
            self.imageView.image = [UIImage imageNamed:@"Temp1.png"];
        }
        
    }
    
    // convert from C to F
    else {
        double celsius = [self.textField.text doubleValue];
        double fahrenheit = (celsius * 1.8) + 32;
        
        self.outputLabel.text = [NSString stringWithFormat:@"%3.2f Fahrenheit", fahrenheit];
        
        if(fahrenheit > 100) {
            self.imageView.image = [UIImage imageNamed:@"Temp9.png"];
        }
        
        else if(fahrenheit > 80) {
            self.imageView.image = [UIImage imageNamed:@"Temp8.png"];
        }
        
        else if(fahrenheit > 70) {
            self.imageView.image = [UIImage imageNamed:@"Temp7.png"];
        }
        
        else if(fahrenheit > 60) {
            self.imageView.image = [UIImage imageNamed:@"Temp6.png"];
        }
        
        else if(fahrenheit > 50) {
            self.imageView.image = [UIImage imageNamed:@"Temp5.png"];
        }
        
        else if(fahrenheit > 40) {
            self.imageView.image = [UIImage imageNamed:@"Temp4.png"];
        }
        
        else if(fahrenheit > 30) {
            self.imageView.image = [UIImage imageNamed:@"Temp3.png"];
        }
        
        else if(fahrenheit > 20) {
            self.imageView.image = [UIImage imageNamed:@"Temp2.png"];
        }
        
        else if(fahrenheit < 10) {
            self.imageView.image = [UIImage imageNamed:@"Temp1.png"];
        }
    }
}

- (IBAction)switchConversion:(id)sender {
    if(self.segControl.selectedSegmentIndex == 0) {
        self.enterLabel.text = @"Enter Fahrenheit";
        self.textField.text = @"";
        self.outputLabel.text = @"0 Celsius";
        self.imageView.image = [UIImage imageNamed:@"Temp1.png"];
    }
    else {
        self.enterLabel.text = @"Enter Celsius";
        self.textField.text = @"";
        self.outputLabel.text = @"0 Fahrenheit";
        self.imageView.image = [UIImage imageNamed:@"Temp1.png"];
    }
}
@end
