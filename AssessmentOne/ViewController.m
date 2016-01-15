//
//  ViewController.m
//  AssessmentOne
//
//  Created by Richard Martin on 2016-01-15.
//  Copyright © 2016 Richard Martin. All rights reserved.
//

#import "ViewController.h"
#import "WebViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *valueOneTextField;

@property (weak, nonatomic) IBOutlet UITextField *valueTwoTextField;

@property (weak, nonatomic) NSString *theAnswer;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *webBarButton;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // init :: disable web button on page load
    
    [self.webBarButton setEnabled:NO];
    
    self.title = @"Answer";
    
}

- (IBAction)onButtonPressedCalculate:(UIButton *)sender {
    
    // string to integer conversion
    // calculation of final value
    
    int valueOne = [self.valueOneTextField.text intValue];
    
    int valueTwo = [self.valueTwoTextField.text intValue];
    
    int calcAnswer = valueOne * valueTwo;
    
    self.theAnswer = [NSString stringWithFormat:@"%d",calcAnswer];
    
    self.title = self.theAnswer;
    
    
    // enable web button when answer is divisible by 3
    
    if (calcAnswer % 3 == 0) {
        [self.webBarButton setEnabled:YES];
    }
    
    // change background colour when answer is greater than 20
    
    if (calcAnswer > 20) {
        self.view.backgroundColor = [UIColor purpleColor];
    } else {
        self.view.backgroundColor = [UIColor whiteColor];
    }
    
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    WebViewController *dvc = segue.destinationViewController;
    dvc.theAnswer = self.theAnswer;
    
}


@end
