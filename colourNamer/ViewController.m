//
//  ViewController.m
//  colourNamer
//
//  Created by John Dyer on 06/01/2015.
//  Copyright (c) 2015 John Dyer. All rights reserved.
//

#import "ViewController.h"
#import "ColourNamer.h"

@interface ViewController ()
- (IBAction)resetColour:(id)sender;
- (IBAction)sliderUpdate:(id)sender;
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIColor *) calcColor{
    return [UIColor colorWithRed: self.redSlider.value green: self.greenSlider.value
                            blue: self.blueSlider.value alpha: 1.0 ];
}

-(void) colorMyView{ // local method called by other two methods
    UIView *myView = [self view];
    myView.backgroundColor = [self calcColor];
}

- (IBAction)resetColour:(id)sender {
    self.redSlider.value = 0.5;
    self.blueSlider.value = 0.5;
    self.greenSlider.value = 0.5;
    [self colorMyView];
    self.colourLabel.text = @"Mid-Gray";
}

- (IBAction)sliderUpdate:(id)sender { [self colorMyView]; self.colourLabel.text = @"Unknown";
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    ColourNamer *newColourNamer = segue.destinationViewController;
    newColourNamer.parent = self;
}

@end