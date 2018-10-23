//
//  ViewController.h
//  TemperatureCalculator
//
//  Created by Mir M. Ahmed on 10/21/18.
//  Copyright © 2018 Mir M. Ahmed. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *enterLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segControl;

- (IBAction)calculate:(id)sender;
- (IBAction)switchConversion:(id)sender;


@end

