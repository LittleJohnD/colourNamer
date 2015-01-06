//
//  ColourNamer.m
//  colourNamer
//
//  Created by John Dyer on 06/01/2015.
//  Copyright (c) 2015 John Dyer. All rights reserved.
//

#import "ColourNamer.h"

@interface ColourNamer ()
@property (weak, nonatomic) IBOutlet UITextField *colourName;
@end

@implementation ColourNamer

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIView *myView = [self view];
    myView.backgroundColor = [self.parent calcColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL) textFieldShouldReturn: (UITextField *) textField{
    [self.colourName resignFirstResponder];
    [self.parent.colourLabel setText: self.colourName.text];
    printf("Colour is: %s\n",[self.colourName.text UTF8String]);
    [self dismissViewControllerAnimated: YES completion: nil];
    return YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
