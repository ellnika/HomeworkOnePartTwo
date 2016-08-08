//
//  ViewController.m
//  HomeworkOne-Project2
//
//  Created by Ewa Czekalska on 07/08/2016.
//  Copyright © 2016 Ewa Czekalska. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *inputField;

@end

@implementation ViewController

- (IBAction)buttonClickedCheck:(id)sender {
    
    NSString *input;
    input=self.inputField.text;
    NSInteger length = input.length;
    NSLog(@"Length is %ld", (long)length);
//The numberFromString: method from the NSNumberFormatter class, as if the number is not valid, it will return nil; otherwise, it will return you an NSNumber.
    NSNumberFormatter *nf = [[NSNumberFormatter alloc] init];
    BOOL isDecimal = [nf numberFromString:input];
    if (isDecimal) {
        NSLog(@"The string is decimal: %@", input);
    }
    else NSLog(@"The string is NOT decimal: %@", input);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
